# Contributing to ServUAE 🇦🇪

Thank you for your interest in contributing to ServUAE! ❤️

ServUAE is an open-source service marketplace and management platform that connects customers with service providers across the United Arab Emirates.

Our goal is to build a unified platform for cleaning companies, HVAC contractors, CCTV installers, smart home integrators, maintenance providers, and other service businesses.

We welcome contributions from developers, designers, testers, technical writers, and service industry professionals.

## Before You Start

* Check existing Issues and Discussions before creating a new one.
* For major features or architectural changes, open an Issue first to discuss the proposed approach.
* Review the project's README.md and documentation before starting development.
* Follow our security guidelines when working with authentication, APIs, company data, and permissions.
* Never include passwords, API keys, access tokens, or other sensitive information in your contributions.

## Areas Where You Can Contribute

Contributions are welcome in the following areas:

* **Core Platform:** Improve the Laravel application and business logic.
* **Central Admin Dashboard:** Enhance platform administration, permissions, analytics, and company management.
* **Service Provider Dashboard:** Improve service catalogs, scheduling, work orders, and company operations.
* **Customer Experience:** Enhance service discovery, booking, quotations, and request tracking.
* **Mobile Application:** Contribute to the customer and technician mobile experience.
* **REST API:** Improve API endpoints, validation, authentication, documentation, and versioning.
* **Enterprise Integrations:** Help integrate ERP, CRM, accounting, and other business systems.
* **Notifications and Webhooks:** Improve event delivery and external system synchronization.
* **UI/UX and Accessibility:** Make the platform more intuitive, responsive, and accessible.
* **Testing and Performance:** Add automated tests and improve reliability.
* **Documentation:** Improve installation guides, architecture documentation, and developer resources.

## Development Workflow

1. Fork the repository.
2. Clone your fork locally.
3. Create a dedicated feature or fix branch.
4. Install dependencies and configure your development environment.
5. Implement your changes following the project's conventions.
6. Add or update tests where appropriate.
7. Run the relevant tests and quality checks.
8. Commit your changes with a clear message.
9. Open a Pull Request against the appropriate branch.

Example:

```bash
git checkout -b feature/company-service-management
```

Other branch examples:

```bash
git checkout -b feature/api-webhooks
git checkout -b fix/booking-validation
git checkout -b docs/api-integration-guide
git checkout -b test/service-request-workflow
```

## Local Development

ServUAE uses Laravel, PHP, MySQL, Blade, Tailwind CSS, Alpine.js, and Vite. Docker Compose may be used to provide a consistent development environment.

Before submitting your changes, ensure that your local environment is configured correctly and that the relevant migrations and tests run successfully.

Consult the README.md for the current installation instructions and supported development commands.

## Commit Messages

Use clear, descriptive commit messages. We recommend the Conventional Commits format.

Examples:

```text
feat: add service provider management
feat: introduce service request API
feat: add webhook event delivery
fix: prevent unauthorized company data access
fix: validate booking availability
docs: improve API integration guide
test: add work order lifecycle tests
refactor: organize service domain modules
```

Keep each commit focused on a logical change.

## Pull Requests

Please include the following information in your Pull Request:

* **Summary:** What changed?
* **Motivation:** Why is this change needed?
* **Implementation:** How does the change work?
* **Testing:** What tests were added or executed?
* **Screenshots:** Include screenshots for UI changes where applicable.
* **Database Changes:** Describe any migrations or schema changes.
* **API Changes:** Document new, modified, or deprecated endpoints.
* **Security Considerations:** Explain any changes affecting authentication, authorization, company data, or integrations.

Keep Pull Requests focused on one feature, bug fix, or improvement.

Before submitting, make sure your branch is up to date with the target branch and resolve any merge conflicts.

## Code Quality and Architecture

Please follow the existing Laravel project structure and coding conventions.

* Follow PSR-12 PHP coding standards.
* Use Laravel conventions for controllers, models, requests, policies, and migrations.
* Validate incoming requests and handle errors consistently.
* Use authorization policies and permissions to protect sensitive operations.
* Keep business logic maintainable and separate concerns appropriately.
* Write automated tests for important business workflows.
* Avoid unrelated changes in the same Pull Request.
* Do not commit generated secrets, local environment files, or unnecessary build artifacts.

## Multi-Company Data Isolation

ServUAE supports multiple service providers on a shared platform.

Contributors must ensure that:

* Companies can access only the data they are authorized to access.
* Company ownership is validated on the server.
* Users cannot modify another company's bookings, work orders, invoices, or documents without explicit authorization.
* Administrative privileges are enforced through server-side authorization.
* API integrations are restricted to their assigned permissions and resources.

Never rely solely on frontend restrictions to protect company data.

## API and Integration Guidelines

When contributing to the REST API or enterprise integrations:

* Follow the existing API versioning conventions.
* Validate and authorize all incoming requests.
* Document request parameters, response formats, and error responses.
* Use appropriate authentication and permission scopes.
* Support safe retries and idempotency where relevant.
* Verify webhook signatures and handle delivery failures.
* Avoid exposing sensitive customer, company, or payment information.
* Add tests for authorization failures and invalid requests.

Breaking API changes should be discussed before implementation and documented clearly.

## Database and Migration Guidelines

* Use Laravel migrations for schema changes.
* Keep migrations consistent with the project's supported database configuration.
* Add indexes and constraints where appropriate.
* Consider existing production data before modifying or removing columns.
* Avoid destructive changes without prior discussion and a migration strategy.
* Update factories, seeders, and tests when the schema changes.

## Security Vulnerabilities

Please do not report exploitable security vulnerabilities in public Issues.

Instead, follow the instructions in SECURITY.md, or contact the maintainers through the project's designated private security reporting channel.

Do not publish real credentials, customer information, API secrets, or sensitive company data.

## Open-Source Collaboration

We aim to maintain a respectful, welcoming, and collaborative community.

By participating in this project, you agree to follow the project's Code of Conduct and respect contributors with different backgrounds and experience levels.

Constructive feedback, thoughtful discussions, and well-documented contributions are encouraged.

## Questions and Discussions

If you are unsure about an implementation or want to propose a major feature:

1. Search existing Issues and Discussions.
2. Open a new Discussion or Issue if needed.
3. Explain the problem, proposed solution, and potential impact.
4. Wait for feedback before investing significant effort in a major architectural change.

## License

By contributing to ServUAE, you agree that your contributions will be distributed under the open-source license specified in the repository's LICENSE file, subject to the project's contribution terms.

Please review the LICENSE file before submitting your contribution.

---

Thank you for helping build ServUAE! 🇦🇪

**Together, we are building an open-source platform for smarter service management and better connections across the UAE.**
