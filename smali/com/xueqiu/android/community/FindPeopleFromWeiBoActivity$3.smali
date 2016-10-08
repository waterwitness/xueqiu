.class final Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;
.super Ljava/lang/Object;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 463
    iget-object v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 464
    return-void
.end method
