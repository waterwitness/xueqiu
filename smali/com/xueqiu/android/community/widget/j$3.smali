.class final Lcom/xueqiu/android/community/widget/j$3;
.super Ljava/lang/Object;
.source "TopicInputBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/j;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/j$3;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 98
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    const-string v0, "solory"

    const-string v1, " action sucess "

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
