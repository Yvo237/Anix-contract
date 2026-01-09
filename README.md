# Anix Protocol Buffers

Protocol Buffer definitions for Anix anime/manga community platform.

## Repository

 **Repository**: [github.com/Yvo237/Anix-contract](https://github.com/Yvo237/Anix-contract)

## Structure

```
proto/
├── common/           # Shared messages and utilities
│   └── common.proto
├── user/            # Authentication and user management
│   └── auth.proto
├── content/         # Content creation and management
│   ├── gallery.proto
│   └── fanworks.proto
├── social/          # Social interactions
│   ├── forum.proto
│   └── messaging.proto
├── commerce/        # Commercial activities
│   ├── marketplace.proto
│   └── contest.proto
└── communication/   # Events and notifications
    ├── events.proto
    └── notification.proto
```

## Services

| Domain | Service | Description |
|--------|---------|-------------|
| **User** | Auth | User authentication and profile management |
| **Content** | Gallery | Artwork upload and gallery management |
| **Content** | Fanworks | Fan fiction and fan art publishing |
| **Social** | Forum | Community discussions and topics |
| **Social** | Messaging | Private messaging system |
| **Commerce** | Marketplace | Product listings and e-commerce |
| **Commerce** | Contest | Art contests and competitions |
| **Communication** | Events | Event management and registration |
| **Communication** | Notification | Email and push notifications |

## Development

### Prerequisites

- [Protocol Buffers compiler](https://grpc.io/docs/protoc-installation/)
- [Buf CLI](https://docs.buf.build/installation)
- Go (for Go code generation)

### Quick Start

```bash
# Install dependencies
just deps

# Generate code
just generate

# Lint and format
just lint
just format
```

### Available Commands

```bash
just --list          # Show all available commands
just generate         # Generate protobuf code
just lint            # Lint protobuf files
just format          # Format protobuf files
just clean           # Clean generated files
```

## Go Package Structure

Generated Go packages follow this pattern:
```
github.com/Yvo237/Anix-contract/proto/{domain};{service}pb
```

