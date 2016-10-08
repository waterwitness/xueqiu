.class final Lcom/xueqiu/android/community/CashierActivity$2;
.super Ljava/lang/Object;
.source "CashierActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/CashierActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/CashierActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CashierActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 171
    check-cast p1, Landroid/content/Intent;

    .line 1174
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    const-string v1, "extra_pay_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/CashierActivity;->a(Lcom/xueqiu/android/community/CashierActivity;Z)Z

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    const-string v1, "\u652f\u4ed8\u7ed3\u679c"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/CashierActivity;->a(Lcom/xueqiu/android/community/CashierActivity;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CashierActivity;->a(Lcom/xueqiu/android/community/CashierActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CashierActivity;->b(Lcom/xueqiu/android/community/CashierActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_paid_mention_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$2;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.statusDetailPaidMentionCommentSuccess"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 171
    :cond_0
    return-void
.end method
