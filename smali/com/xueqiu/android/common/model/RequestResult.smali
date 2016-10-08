.class public Lcom/xueqiu/android/common/model/RequestResult;
.super Ljava/lang/Object;
.source "RequestResult.java"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/common/model/RequestResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/RequestResult;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/common/model/RequestResult;->message:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/xueqiu/android/common/model/RequestResult;->success:Z

    .line 30
    return-void
.end method
