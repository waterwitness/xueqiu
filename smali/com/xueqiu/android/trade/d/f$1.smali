.class final Lcom/xueqiu/android/trade/d/f$1;
.super Landroid/os/Handler;
.source "PAAccountVideoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/f;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 45
    :sswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 1025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    .line 45
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/i;->j()V

    goto :goto_0

    .line 48
    :sswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 2025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 48
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 3025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u83b7\u53d6\u4e0d\u5230\u5750\u5e2d"

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    .line 53
    :cond_1
    :sswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 4025
    iget v0, v0, Lcom/xueqiu/android/trade/d/f;->c:I

    .line 53
    if-eq v0, v5, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 5025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    .line 54
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :sswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 6025
    iget v1, v0, Lcom/xueqiu/android/trade/d/f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->c:I

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 7025
    iget v0, v0, Lcom/xueqiu/android/trade/d/f;->c:I

    .line 59
    if-ne v0, v5, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 8025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 9025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u5750\u5e2d\u5168\u5fd9"

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :sswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 10025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    .line 67
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/i;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :sswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 11025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 12025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 76
    :sswitch_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 13025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 14025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    const-string v2, "step:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 84
    :sswitch_7
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 15025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 16025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 17183
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 17184
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 17185
    const-string v4, "extra_event_result"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17186
    const-string v4, "extra_event"

    iget-object v1, v1, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17187
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 86
    invoke-static {v0, v2}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 90
    :sswitch_8
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    .line 18025
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 19025
    iput v1, v0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$1;->a:Lcom/xueqiu/android/trade/d/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/f;->a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xe -> :sswitch_3
        0xc9 -> :sswitch_1
        0xd2 -> :sswitch_2
        0x456 -> :sswitch_4
        0x458 -> :sswitch_5
        0x45a -> :sswitch_6
        0x45b -> :sswitch_7
        0x45c -> :sswitch_8
    .end sparse-switch
.end method
