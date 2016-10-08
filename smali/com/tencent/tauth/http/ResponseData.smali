.class public final Lcom/tencent/tauth/http/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field private responseBody:[B

.field private statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/tencent/tauth/http/ResponseData;->statusCode:I

    .line 6
    iput-object p2, p0, Lcom/tencent/tauth/http/ResponseData;->responseBody:[B

    .line 7
    return-void
.end method


# virtual methods
.method public final getResponseBody()[B
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/tauth/http/ResponseData;->responseBody:[B

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/tencent/tauth/http/ResponseData;->statusCode:I

    return v0
.end method
