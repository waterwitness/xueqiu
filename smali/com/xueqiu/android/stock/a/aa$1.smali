.class final Lcom/xueqiu/android/stock/a/aa$1;
.super Ljava/lang/Object;
.source "QuotesTopicRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/aa;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/c;

.field final synthetic b:Lcom/xueqiu/android/stock/a/aa;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/aa;Lcom/xueqiu/android/tactic/d/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/aa$1;->b:Lcom/xueqiu/android/stock/a/aa;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/aa$1;->a:Lcom/xueqiu/android/tactic/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0xaf0

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/aa$1;->a:Lcom/xueqiu/android/tactic/d/c;

    .line 1022
    iget v0, v0, Lcom/xueqiu/android/tactic/d/c;->a:I

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/aa$1;->a:Lcom/xueqiu/android/tactic/d/c;

    .line 3046
    iget-object v0, v0, Lcom/xueqiu/android/tactic/d/c;->d:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/aa$1;->b:Lcom/xueqiu/android/stock/a/aa;

    .line 4024
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/aa;->c:Landroid/content/Context;

    .line 71
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
