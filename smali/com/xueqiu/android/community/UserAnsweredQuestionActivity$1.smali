.class final Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;
.super Ljava/lang/Object;
.source "UserAnsweredQuestionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;->a:Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;->a:Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->a(Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;)Lcom/xueqiu/android/community/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/w;->a()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Question;

    .line 50
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;->a:Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    return-void
.end method
