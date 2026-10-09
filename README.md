# 🇦🇪 ServUAE

**One Platform. Every Service. Across the UAE.**

ServUAE is an open-source service marketplace and service-management platform designed to connect customers with trusted service providers across the United Arab Emirates.

The project aims to support cleaning companies, HVAC contractors, CCTV installers, smart-home integrators, electrical and plumbing providers, facility-management teams, and other residential and commercial service businesses.

> **Project status:** Early-stage project. The product architecture and documentation are being established. Do not assume that every planned feature is implemented yet.

## Vision

Build a unified, extensible platform for discovering, booking, coordinating, and managing services across the UAE—with a central administration dashboard, provider and technician workflows, a mobile app, and APIs for business-system integration.

## Planned capabilities

- Central administration dashboard for platform operations.
- Multi-company accounts, roles, permissions, and company data isolation.
- Service categories, service catalogs, pricing, and service-area management.
- Customer service requests, bookings, quotations, and status tracking.
- Provider dashboards, technician assignment, scheduling, and work orders.
- Customer reviews, company verification, and notifications.
- REST API for web and mobile clients.
- Webhooks and integrations with ERP, CRM, accounting, and other company systems.
- Reporting, audit logs, and operational analytics.

These are planned capabilities; implementation status will be tracked in the repository's Issues and project roadmap.

## Intended technology stack

- **Backend:** Laravel and PHP
- **Database:** MySQL
- **Web UI:** Blade, Tailwind CSS, Alpine.js, and Vite
- **Mobile app:** Flutter is the current proposal; mobile development may follow the core API
- **Development environment:** Docker Compose is planned

Technology choices may be refined as implementation progresses. Check the repository before relying on a particular component being configured.

## Repository status and setup

The repository is currently in its initial documentation and planning stage. A runnable Laravel application, Docker Compose configuration, and automated test workflow must be committed before installation commands can be considered reliable.

Until those files are available, please do not assume that `composer install`, `npm install`, `php artisan migrate`, or `docker compose up` will work from this repository.

Contributors who want to help establish the initial application scaffold are encouraged to open an Issue describing the proposed setup. Installation instructions will be added here once the Laravel scaffold, environment example, database migrations, and Docker configuration are committed and tested.

## Architecture principles

1. **One central source of truth:** web, mobile, and external integrations use the same application rules and API.
2. **Secure multi-company access:** company data must be protected by server-side authorization and ownership checks.
3. **API-first integration:** versioned endpoints, documented errors, scoped credentials, and safe retry behavior.
4. **Maintainable modules:** begin with a well-structured Laravel application rather than introducing microservices prematurely.
5. **Testable workflows:** booking, quotations, work orders, permissions, and integrations should have automated tests.
6. **Open collaboration:** keep design decisions, proposed features, and contribution guidance documented.

## Roadmap

### Phase 1 — Core MVP
- [ ] Laravel application scaffold and environment configuration
- [ ] Docker Compose development environment
- [ ] Authentication, roles, and permissions
- [ ] Company profiles and company data isolation
- [ ] Service categories and service listings
- [ ] Customer service requests and status tracking
- [ ] Central administration dashboard
- [ ] Automated tests and continuous integration

### Phase 2 — Service operations
- [ ] Provider and technician dashboards
- [ ] Scheduling and work orders
- [ ] Quotations and bookings
- [ ] Attachments and service completion reports
- [ ] Notifications and reviews

### Phase 3 — API and mobile
- [ ] Versioned REST API and API documentation
- [ ] Scoped integration credentials
- [ ] Webhooks and delivery retries
- [ ] Customer and technician mobile experiences
- [ ] Integration tests and security review

### Phase 4 — Business capabilities
- [ ] Invoicing and payment-provider integration
- [ ] Subscription or commission options
- [ ] Advanced analytics and reporting
- [ ] Recurring maintenance contracts
- [ ] Developer and integration partner documentation

## Contributing

Contributions are welcome from developers, designers, testers, documentation writers, and service-industry professionals.

Before contributing:

1. Read [CONTRIBUTING.md](CONTRIBUTING.md).
2. Check existing Issues and Discussions.
3. Open an Issue before starting a major feature or architectural change.
4. Add or update tests where appropriate.
5. Never commit secrets, real customer data, or production credentials.

## Security

Please read [SECURITY.md](SECURITY.md) before reporting a vulnerability. Do not publish exploitable security details or sensitive information in public Issues.

## License

ServUAE is distributed under the [MIT License](LICENSE).

## Project links

- Repository: https://github.com/AsmarWeb/servuae
- Issues: https://github.com/AsmarWeb/servuae/issues
- Discussions: https://github.com/AsmarWeb/servuae/discussions

---

**ServUAE — One Platform. Every Service. Across the UAE.** 🇦🇪
