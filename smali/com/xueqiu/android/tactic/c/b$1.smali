.class final Lcom/xueqiu/android/tactic/c/b$1;
.super Ljava/lang/Object;
.source "TacticPushFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/c/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/c/b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/c/b;->a(Lcom/xueqiu/android/tactic/c/b;)Lcom/xueqiu/android/tactic/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/c/b;->a(Lcom/xueqiu/android/tactic/c/b;)Lcom/xueqiu/android/tactic/d/h;

    move-result-object v0

    .line 1068
    iget-object v0, v0, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 83
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-virtual {v1}, Lcom/xueqiu/android/tactic/c/b;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "tactic_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/c/b;->a(Lcom/xueqiu/android/tactic/c/b;)Lcom/xueqiu/android/tactic/d/h;

    move-result-object v2

    .line 2068
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 2191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b$1;->a:Lcom/xueqiu/android/tactic/c/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/tactic/c/b;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
