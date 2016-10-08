.class final Lcom/xueqiu/android/community/WriteStatusActivity$17;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 943
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnEditorActionListener actionId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->y(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 948
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 949
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->y(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 958
    :goto_0
    return v3

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$17;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
