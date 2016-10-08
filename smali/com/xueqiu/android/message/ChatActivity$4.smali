.class final Lcom/xueqiu/android/message/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$4;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    check-cast p1, Ljava/lang/Integer;

    .line 1460
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 2442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 1460
    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$4;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->k()V

    .line 1463
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$4;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$4;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/lang/Boolean;)V

    .line 1465
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$4;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3247
    iget-object v2, v1, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 3248
    iget v2, v1, Lcom/xueqiu/android/message/ChatActivity;->v:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/xueqiu/android/message/ChatActivity;->v:I

    .line 3249
    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->p:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0543

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "%d\u6761\u672a\u8bfb\u6d88\u606f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v1, v1, Lcom/xueqiu/android/message/ChatActivity;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_1
    return-void
.end method
