# Security Policy

## Supported Versions

ServUAE is in early-stage development. Until the project publishes a release and support table, security fixes are considered for the latest code on the default branch.

| Version | Supported |
| --- | --- |
| Latest default branch | Yes, on a best-effort basis |
| Older commits and unreleased forks | No guarantee |

## Reporting a Vulnerability

Please do **not** report exploitable security vulnerabilities in public GitHub Issues, Discussions, or Pull Requests.

Instead, use GitHub's **Private vulnerability reporting** feature for this repository if it is enabled. If it is not available, contact the repository maintainers privately through the maintainer's GitHub profile and request a secure reporting channel.

When reporting a vulnerability, include as much of the following as you can safely provide:

- A concise description and potential impact.
- Affected component, endpoint, or commit.
- Steps to reproduce in a test environment.
- Proof-of-concept details that do not expose real users or production data.
- Any suggested mitigation.

Please do not include passwords, API tokens, private keys, personal data, or real customer/company records in a report.

## Response Expectations

The maintainers will make a reasonable effort to acknowledge a private report, assess its severity, and coordinate a fix and disclosure timeline. As this is a community project in its early stages, response times are not guaranteed.

Please allow maintainers time to investigate and prepare a fix before publicly disclosing an unpatched vulnerability.

## Security Practices for Contributors

Contributors should:

- Validate and authorize all incoming requests on the server.
- Enforce company-level data isolation for bookings, work orders, invoices, and documents.
- Never rely on frontend visibility checks as access control.
- Keep secrets in environment variables and never commit real `.env` files.
- Use least-privilege credentials for APIs and integrations.
- Verify webhook signatures and make retryable operations safe against duplicate processing.
- Avoid logging passwords, access tokens, payment details, or unnecessary personal data.
- Add tests for authorization failures and cross-company access attempts.
- Keep dependencies updated and review security-sensitive changes carefully.

## Scope

This policy covers security issues in the ServUAE repository and its officially maintained application components. Third-party services and independently maintained forks may have separate reporting processes.
