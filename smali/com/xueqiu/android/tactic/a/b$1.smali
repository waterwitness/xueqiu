.class final Lcom/xueqiu/android/tactic/a/b$1;
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
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/b$1;->b:Lcom/xueqiu/android/tactic/a/b;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/b$1;->a:Lcom/xueqiu/android/tactic/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "extra_push_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/b$1;->a:Lcom/xueqiu/android/tactic/d/h;

    .line 1060
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/h;->id:J

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/b$1;->b:Lcom/xueqiu/android/tactic/a/b;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/b;->f:Lcom/xueqiu/android/tactic/a/a;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 86
    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/b$1;->b:Lcom/xueqiu/android/tactic/a/b;

    iget-object v2, v2, Lcom/xueqiu/android/tactic/a/b;->f:Lcom/xueqiu/android/tactic/a/a;

    .line 2089
    iget-object v2, v2, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 86
    const-class v3, Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
