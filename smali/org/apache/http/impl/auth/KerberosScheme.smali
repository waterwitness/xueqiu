.class public Lorg/apache/http/impl/auth/KerberosScheme;
.super Lorg/apache/http/impl/auth/GGSSchemeBase;
.source "KerberosScheme.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final KERBEROS_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(ZZ)V

    .line 54
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/auth/GGSSchemeBase;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method protected generateToken([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected generateToken([BLjava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.2.840.113554.1.2.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/http/impl/auth/KerberosScheme;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "Parameter name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "Kerberos"

    return-object v0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method
