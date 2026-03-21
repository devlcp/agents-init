import type { Plugin } from "@opencode-ai/plugin"
import fs from 'fs'
import path from 'path'

export const AgentsGovernancePlugin: Plugin = async ({ directory }) => {
  const readGovernance = () => {
    const agentsDir = path.join(directory, '.agents');
    const files = ['AGENTS.md', 'DECISIONS.md', 'STATUS.md'];
    let context = "\n## Project Governance & Constitution\n";
    
    for (const file of files) {
      const filePath = path.join(agentsDir, file);
      if (fs.existsSync(filePath)) {
        context += `\n### Context: ${file}\n` + fs.readFileSync(filePath, 'utf8') + "\n";
      }
    }
    return context;
  };

  return {
    "experimental.session.compacting": async (input, output) => {
      // Injects project governance into the session summary whenever it compacts
      output.context.push(readGovernance());
    },
    // We can also try to inject it as a message or a system-like context update.
    // For now, compaction is the most reliable way per documentation.
  }
}
