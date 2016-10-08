.class public Lcom/xueqiu/android/common/model/PhotoUploadResult;
.super Ljava/lang/Object;
.source "PhotoUploadResult.java"


# instance fields
.field private filename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private width:I
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
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->width:I

    return v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->filename:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->height:I

    .line 45
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->url:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/xueqiu/android/common/model/PhotoUploadResult;->width:I

    .line 37
    return-void
.end method
