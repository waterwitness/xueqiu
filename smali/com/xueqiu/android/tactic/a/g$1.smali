.class final Lcom/xueqiu/android/tactic/a/g$1;
.super Ljava/lang/Object;
.source "TacticPushAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/b;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/g$1;->b:Lcom/xueqiu/android/tactic/a/g;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/g$1;->a:Lcom/xueqiu/android/tactic/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/g$1;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 87
    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/g$1;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1165
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/b;->statusId:J

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/g$1;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 89
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
