## Backend
- "Architecture: Clean, Hexagonal, or Layered?"
  > *Hint: Choose 'Layered' for simple apps. Choose 'Hexagonal' if you want to keep your business logic independent of external tools or databases.*
- "API Standard: RESTful, GraphQL, or gRPC?"
  > *Example: 'RESTful' is the standard for web/mobile. 'gRPC' is ultra-fast for internal communication between microservices.*
- "Persistence: SQL or NoSQL? Do you need an ORM/Query Builder?"
  > *Context: Use 'SQL' (Postgres/MySQL) for structured data like users. Use 'NoSQL' (MongoDB) for flexible data like logs.*
- "Auth: JWT, OAuth2, or Session-based?"
  > *Example: 'JWT' is great for mobile. 'OAuth2' is required if you want 'Login with Google/GitHub'.*

## Frontend
- "Strategy: CSR (Single Page), SSR (Server Side), or SSG (Static)?"
  > *Hint: Use 'SSR' for SEO and speed. Use 'CSR' (React/Vue) for highly interactive dashboards.*
- "State Management: Global (Zustand/Redux), Context API, or Server-state?"
  > *Context: Use Global state if your app has complex data shared across many screens.*
- "Styling: Tailwind, CSS Modules, or Styled Components?"
  > *Hint: 'Tailwind' is the fastest for development and highly recommended for this ecosystem.*

## Enterprise
- "Microservices: Is this part of a Distributed System?"
  > *Context: If you have multiple independent servers talking to each other, we must define communication boundaries.*
- "Observability: Integration with Prometheus or OpenTelemetry?"
  > *Example: This allows you to monitor the health of your app and find errors before users do.*
- "Compliance: Do we have GDPR or specific Privacy requirements?"
  > *Context: Mandatory if you handle real user data (emails, IDs) in Europe or globally.*

## System-Tools
- "Execution: Standalone binary, Shell wrapper, or Daemon/Service?"
  > *Hint: A 'Daemon' runs in the background. A 'Standalone' is a single tool you run in the terminal.*
- "Interface: CLI, TUI (like Neovim), or Headless?"
  > *Example: 'CLI' is text-only. 'TUI' has a visual layout in the terminal. 'Headless' has no interface.*

## Custom
- "Mission: What is the unique 'Secret Sauce' or main goal of this project?"
- "AI/LLM: Are we integrating specific RAG or Prompt Engineering pipelines?"
- "Constraints: Are there any non-standard libraries or legacy systems we must support?"

## ADRV Methodology (For Juniors)
- "Do you understand the ADRV Cycle? (Analyze -> Draft -> Refactor -> Validate)"
  > *Mentor Note: This is our Secret Weapon. We ANALYZE the problem, DRAFT the logic, REFACTOR for perfection, and VALIDATE to ensure zero bugs. Do you want me to explain each step during development?*
