.class final Lcom/xueqiu/android/common/search/USearchActivity$9;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/USearchActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->a:Ljava/lang/String;

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 320
    :cond_0
    return-void
.end method
