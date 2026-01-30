Patient Management Microservices System
Project Overview

This is a comprehensive Patient Management System built using a modern microservices architecture. The system is designed for the healthcare domain and manages the complete patient lifecycle — from registration to billing and analytics.

System Architecture
Core Services
1. Patient Service (Port: 4000)

Purpose: Complete CRUD management of patient data

Features:

Patient registration and profile management

Patient information validation

Database persistence using PostgreSQL

Event publishing through Kafka

gRPC communication with the Billing Service

Database: PostgreSQL (patient-service-db)

2. Auth Service (Port: 4005)

Purpose: Authentication and Authorization

Features:

JWT-based authentication

User management

Role-based access control

Secure login and logout functionality

Database: PostgreSQL (auth-service-db)

3. Billing Service (Port: 4001, gRPC: 9001)

Purpose: Patient billing account management

Features:

Automatic billing account creation

gRPC server for inter-service communication

Integration with the Patient Service

Communication: gRPC protocol

4. Analytics Service (Port: 4002)

Purpose: Real-time data analytics and reporting

Features:

Kafka event consumption

Patient activity tracking

Real-time analytics processing

Data Source: Kafka events from the Patient Service

5. API Gateway (Port: 4004)

Purpose: Single entry point for all client requests

Features:

Routing requests to the appropriate service

JWT token validation

Load balancing

Aggregation of API documentation

Supporting Infrastructure
6. Infrastructure Service

Purpose: AWS LocalStack deployment automation

Features:

ECS Fargate services

RDS PostgreSQL databases

MSK Kafka cluster

Application Load Balancer

VPC and networking setup

Technology Stack
Backend Technologies

Framework: Spring Boot 3.x

Language: Java 17+

Database: PostgreSQL

Message Queue: Apache Kafka

Communication: gRPC, REST APIs

Authentication: JWT (JSON Web Tokens)

API Documentation: OpenAPI/Swagger

Infrastructure & DevOps

Containerization: Docker

Cloud Platform: AWS (via LocalStack)

Container Orchestration: ECS Fargate

Infrastructure as Code: AWS CDK

Service Discovery: AWS Cloud Map

Load Balancing: Application Load Balancer

Communication Patterns

Synchronous: REST APIs, gRPC

Asynchronous: Kafka messaging

Protocol Buffers: Efficient data serialization

Key Features
1. Microservices Architecture

Loosely coupled services

Independent deployment and scaling

Service-to-service communication using gRPC and REST

Event-driven design powered by Kafka

2. Security

JWT-based authentication

Authorization at API Gateway level

Secure inter-service communication

Role-based access control

3. Data Management

Separate databases for each service

Event sourcing for analytics

Data consistency via messaging

4. Scalability

Container-based deployment

Auto-scaling support

Load balancing

Cloud-native design

5. Monitoring & Analytics

Real-time event processing

Patient activity analytics

Comprehensive logging

Health checks

Business Use Cases
Healthcare Management

Patient Registration: Register new patients into the system

Patient Profile Management: Update patient information

Billing Integration: Automatic billing account generation

Analytics & Reporting: Analyze patient-related data

Secure Access: Secure login for healthcare professionals

System Benefits

Scalability: Handles high patient volume

Reliability: Fault-tolerant architecture

Security: Protects sensitive healthcare data

Real-time Processing: Instant updates and notifications

Integration Ready: Easy integration with third-party systems

API Endpoints
Patient Service

GET /patients — Fetch all patients

POST /patients — Create a new patient

PUT /patients/{id} — Update patient details

DELETE /patients/{id} — Delete a patient

Auth Service

POST /login — User authentication

GET /validate — Token validation

API Gateway Routes

/api/patients/** → Patient Service

/auth/** → Auth Service

/api-docs/** → Service documentation

Event Flow
1. Patient Creation Flow

Client → API Gateway → Patient Service

Patient Service → Database (save patient record)

Patient Service → Billing Service (gRPC call)

Patient Service → Kafka (publish event)

Analytics Service ← Kafka (consume event)

2. Authentication Flow

Client → API Gateway → Auth Service

JWT token generated and validated

Token is verified in all future requests

Development Setup
Prerequisites

Java 17+

Maven 3.6+

Docker

PostgreSQL

Apache Kafka

AWS CLI (for LocalStack)

Environment Variables

Refer to the pinned README.md for complete environment setup of each service.

Running the System

Start infrastructure services (PostgreSQL, Kafka)

Deploy services using Docker Compose or AWS LocalStack

Access API Gateway at:
http://localhost:4004

Project Structure
java-spring-microservices/
├── patient-service/          # Patient management
├── auth-service/             # Authentication
├── billing-service/          # Billing management
├── analytics-service/        # Data analytics
├── api-gateway/              # API Gateway
├── infrastructure/           # AWS CDK deployment
├── integration-tests/        # End-to-end tests
├── api-requests/             # HTTP request examples
└── grpc-requests/            # gRPC request examples

Future Enhancements

Notification Service integration

Advanced analytics dashboard

Mobile application support

Third-party EHR system integration

Enhanced security and compliance features

Note: This project is designed for the healthcare domain and demonstrates modern microservices patterns. For production deployment, additional security, monitoring, and compliance measures may be required.