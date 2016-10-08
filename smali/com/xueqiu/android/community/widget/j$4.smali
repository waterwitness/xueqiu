.class final Lcom/xueqiu/android/community/widget/j$4;
.super Ljava/lang/Object;
.source "TopicInputBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/j$4;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$4;->a:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->b:Lcom/xueqiu/android/community/widget/k;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$4;->a:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->b:Lcom/xueqiu/android/community/widget/k;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j$4;->a:Lcom/xueqiu/android/community/widget/j;

    iget-object v1, v1, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/widget/k;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$4;->a:Lcom/xueqiu/android/community/widget/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method
