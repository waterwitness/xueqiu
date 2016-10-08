.class final Lcom/xueqiu/android/tactic/a/j$1;
.super Ljava/lang/Object;
.source "TacticSubscribeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/g;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/j;Lcom/xueqiu/android/tactic/d/g;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/j$1;->b:Lcom/xueqiu/android/tactic/a/j;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/j$1;->a:Lcom/xueqiu/android/tactic/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/j$1;->b:Lcom/xueqiu/android/tactic/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/tactic/a/j;->c:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v0, "tactic_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/j$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 1191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 70
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/j$1;->b:Lcom/xueqiu/android/tactic/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/tactic/a/j;->c:Landroid/content/Context;

    check-cast v0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method
