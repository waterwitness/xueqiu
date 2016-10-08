.class final Lcom/xueqiu/android/tactic/a/b$2;
.super Ljava/lang/Object;
.source "MyTacticListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/h;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/b;Lcom/xueqiu/android/tactic/d/h;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/b$2;->b:Lcom/xueqiu/android/tactic/a/b;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/b$2;->a:Lcom/xueqiu/android/tactic/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/b$2;->b:Lcom/xueqiu/android/tactic/a/b;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/b;->f:Lcom/xueqiu/android/tactic/a/a;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 105
    const-class v2, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "tactic_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/b$2;->a:Lcom/xueqiu/android/tactic/d/h;

    .line 2068
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 2191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/b$2;->b:Lcom/xueqiu/android/tactic/a/b;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/b;->f:Lcom/xueqiu/android/tactic/a/a;

    .line 3089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
