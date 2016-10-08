.class public Lcom/xueqiu/android/common/model/FileUploadResult;
.super Ljava/lang/Object;
.source "FileUploadResult.java"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->status:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->message:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->status:Z

    .line 42
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/xueqiu/android/common/model/FileUploadResult;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
