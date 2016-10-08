.class public Lorg/apache/http/auth/KerberosCredentials;
.super Ljava/lang/Object;
.source "KerberosCredentials.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/http/auth/Credentials;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c3ab6015b52cf9L


# instance fields
.field private final gssCredential:Lorg/ietf/jgss/GSSCredential;


# direct methods
.method public constructor <init>(Lorg/ietf/jgss/GSSCredential;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/http/auth/KerberosCredentials;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    .line 55
    return-void
.end method


# virtual methods
.method public getGSSCredential()Lorg/ietf/jgss/GSSCredential;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/http/auth/KerberosCredentials;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
