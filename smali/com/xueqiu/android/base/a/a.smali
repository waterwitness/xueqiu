.class public Lcom/xueqiu/android/base/a/a;
.super Lcom/android/volley/y;
.source "SNBApiError.java"


# instance fields
.field public data:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public errorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/volley/y;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    const-string v1, "{\"error_code\": \"%s\", \"error_description\":\"%s\", \"error_uri\":\"%s\", \"data\":\"%s\"}"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/base/a/a;->errorUri:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 105
    :goto_0
    aput-object v0, v2, v3

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 105
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
