.class final Lcom/xueqiu/android/community/WriteStatusActivity$36;
.super Lrx/i;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V
    .locals 0

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-boolean p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->a:Z

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1828
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1824
    .line 2838
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 2839
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->a:Z

    if-eqz v0, :cond_0

    .line 2841
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-class v2, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2842
    const-string v2, "amount"

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 2843
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getAmount()F

    move-result v0

    .line 2842
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2844
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->Q(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 2847
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->R(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 2848
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    .line 1824
    return-void

    .line 2843
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1832
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1833
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$36;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "erro"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1834
    return-void
.end method
