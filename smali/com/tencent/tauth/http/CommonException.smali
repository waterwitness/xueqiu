.class public Lcom/tencent/tauth/http/CommonException;
.super Ljava/lang/Throwable;
.source "CommonException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tauth/http/CommonException;->mErrorCode:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tauth/http/CommonException;->mErrorCode:I

    .line 16
    iput-object p2, p0, Lcom/tencent/tauth/http/CommonException;->mErrorType:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/tencent/tauth/http/CommonException;->mErrorCode:I

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/tauth/http/CommonException;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tauth/http/CommonException;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
