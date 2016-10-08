.class final Lcom/xueqiu/android/community/TopicDetailActivity$2;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;->b(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/a/c;

.field final synthetic b:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/cube/a/c;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->a:Lcom/xueqiu/android/cube/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 6

    .prologue
    .line 442
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->i(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->a:Lcom/xueqiu/android/cube/a/c;

    .line 1237
    iget-object v1, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    check-cast v1, Lcom/xueqiu/android/community/TopicDetailActivity;

    new-instance v3, Lcom/xueqiu/android/community/d/c$7;

    invoke-direct {v3, v0, v2}, Lcom/xueqiu/android/community/d/c$7;-><init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/cube/a/c;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 1253
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x7d1

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1254
    const-string v2, "special_id"

    iget-wide v4, v0, Lcom/xueqiu/android/community/d/c;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 1256
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 443
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    const-string v1, "extra_cube_symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x7d1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 451
    const-string v1, "special_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$2;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/TopicDetailActivity;->f(Lcom/xueqiu/android/community/TopicDetailActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 454
    return-void
.end method
