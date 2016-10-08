.class final Lcom/xueqiu/android/stock/a/y$1;
.super Ljava/lang/Object;
.source "QuotesRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/g;

.field final synthetic b:Lcom/xueqiu/android/stock/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/y;Lcom/xueqiu/android/tactic/d/g;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/y$1;->b:Lcom/xueqiu/android/stock/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/y$1;->a:Lcom/xueqiu/android/tactic/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/y$1;->b:Lcom/xueqiu/android/stock/a/y;

    .line 1027
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/y;->c:Landroid/content/Context;

    .line 60
    const-class v2, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "tactic_id"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/y$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 1191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/y$1;->b:Lcom/xueqiu/android/stock/a/y;

    .line 2027
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/y;->c:Landroid/content/Context;

    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 65
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/y$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 2247
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 67
    return-void
.end method
