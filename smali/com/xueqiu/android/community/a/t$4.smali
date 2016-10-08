.class final Lcom/xueqiu/android/community/a/t$4;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/community/a/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/t;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/xueqiu/android/community/a/t$4;->b:Lcom/xueqiu/android/community/a/t;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/t$4;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lcom/xueqiu/android/community/a/t$4;->a:Lcom/google/gson/JsonObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$4;->b:Lcom/xueqiu/android/community/a/t;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 599
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 600
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/t$4;->a:Lcom/google/gson/JsonObject;

    const-string v3, "url"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/t$4;->a:Lcom/google/gson/JsonObject;

    const-string v3, "ad_id"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 603
    return-void
.end method
