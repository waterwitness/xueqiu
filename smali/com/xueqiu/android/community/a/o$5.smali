.class final Lcom/xueqiu/android/community/a/o$5;
.super Lcom/xueqiu/android/base/b/p;
.source "PublicTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/o;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/community/a/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/o;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/xueqiu/android/community/a/o$5;->c:Lcom/xueqiu/android/community/a/o;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/o$5;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xueqiu/android/community/a/o$5;->b:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1042
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2051
    const-string v0, "CUBE"

    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STOCK"

    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2052
    :cond_0
    const-string v0, "symbols"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 2056
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$5;->c:Lcom/xueqiu/android/community/a/o;

    iget v2, p0, Lcom/xueqiu/android/community/a/o$5;->b:I

    iget-object v3, p0, Lcom/xueqiu/android/community/a/o$5;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;Lcom/google/gson/JsonObject;ILjava/lang/String;)V

    .line 2058
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o$5;->c:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->notifyDataSetChanged()V

    .line 1042
    return-void

    .line 2054
    :cond_1
    const-string v0, "uids"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    goto :goto_0
.end method
