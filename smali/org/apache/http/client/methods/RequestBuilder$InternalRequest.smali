.class Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "RequestBuilder.java"


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 517
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;->method:Ljava/lang/String;

    .line 518
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder$InternalRequest;->method:Ljava/lang/String;

    return-object v0
.end method
