# Anix Protocol Buffers

This repository contains the Protocol Buffer definitions for the Anix anime/manga community platform.

## Structure

```
proto/
├── auth.proto          # Authentication and user management
├── gallery.proto        # Art gallery and image management
├── forum.proto          # Forum discussions and topics
├── contest.proto        # Art contests and competitions
├── fanworks.proto       # Fan fiction and fan art
├── messaging.proto      # Private messaging system
├── marketplace.proto   # Marketplace for merchandise
├── events.proto         # Events and meetups
└── notification.proto  # Notifications and alerts
```

## Services Overview

### Auth Service
- User registration and login
- Profile management
- Token-based authentication

### Gallery Service
- Artwork upload and management
- Public/private galleries
- Tag-based organization

### Forum Service
- Topic creation and discussion
- Comments and replies
- Community interaction

### Contest Service
- Contest creation and management
- Entry submission and voting
- Winner selection

### Fanworks Service
- Fan fiction publishing
- Fan art sharing
- Community feedback

### Messaging Service
- Private conversations
- Real-time messaging
- Thread management

### Marketplace Service
- Product listings
- Order management
- E-commerce functionality

### Events Service
- Event creation and registration
- Meetup organization
- Community events

### Notification Service
- Email notifications
- Push notifications
- Alert management

## Development

### Prerequisites
- Protocol Buffers compiler (`protoc`)
- Buf CLI tool
- Go (for Go code generation)

### Setup

1. Install Buf:
```bash
go install github.com/bufbuild/buf/cmd/buf@latest
```

2. Generate code:
```bash
buf generate
```

3. Lint and format:
```bash
buf lint
buf format -w
```

### Using Just

Install `just` and run available commands:
```bash
just --list
```

Common commands:
```bash
just generate    # Generate protobuf code
just lint       # Lint protobuf files
just format     # Format protobuf files
just clean      # Clean generated files
```

## Package Structure

All generated Go packages use the following pattern:
```
github.com/otakuart/proto/{service};{service}pb
```

For example:
- `github.com/otakuart/proto/auth;authpb`
- `github.com/otakuart/proto/gallery;gallerypb`

## Contributing

1. Follow Protocol Buffers best practices
2. Use `buf format` to maintain consistent formatting
3. Run `buf lint` before submitting changes
4. Update documentation for new services or messages

## License

[Add your license here]
