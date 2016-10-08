.class final Lcom/xueqiu/android/tactic/MyPushListActivity$1;
.super Ljava/lang/Object;
.source "MyPushListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/MyPushListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/MyPushListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/MyPushListActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/tactic/MyPushListActivity$1;->a:Lcom/xueqiu/android/tactic/MyPushListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity$1;->a:Lcom/xueqiu/android/tactic/MyPushListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/MyPushListActivity;->a(Lcom/xueqiu/android/tactic/MyPushListActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/e/a;->a(Z)V

    .line 69
    return-void
.end method
