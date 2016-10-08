.class final Lcom/xueqiu/android/community/a/t$3;
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
    .line 580
    iput-object p1, p0, Lcom/xueqiu/android/community/a/t$3;->b:Lcom/xueqiu/android/community/a/t;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/t$3;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$3;->b:Lcom/xueqiu/android/community/a/t;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$3;->a:Lcom/google/gson/JsonObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 585
    const-string v1, "topic_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 586
    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$3;->b:Lcom/xueqiu/android/community/a/t;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 587
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 588
    const-string v1, "word"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/t$3;->a:Lcom/google/gson/JsonObject;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 589
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 590
    return-void
.end method
