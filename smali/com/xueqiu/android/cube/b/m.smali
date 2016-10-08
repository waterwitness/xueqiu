.class public final Lcom/xueqiu/android/cube/b/m;
.super Landroid/support/v4/a/i;
.source "SwipeItemFragment.java"


# instance fields
.field a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f030116

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 49
    const-string v1, "extra_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->b:Ljava/lang/String;

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 50
    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->d:Ljava/lang/String;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 51
    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/b/m;->c:I

    .line 52
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v1, 0x7f020444

    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    const v2, 0x7f0e0459

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->e:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    const v2, 0x7f0e045a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->f:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->a:Landroid/view/View;

    const v2, 0x7f0e0425

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/m;->g:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/m;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/cube/b/m;->e:Landroid/widget/ImageView;

    iget v0, p0, Lcom/xueqiu/android/cube/b/m;->c:I

    .line 4085
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 79
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 4088
    goto :goto_1

    .line 4090
    :pswitch_1
    const v0, 0x7f020446

    .line 4091
    goto :goto_1

    .line 4093
    :pswitch_2
    const v0, 0x7f020445

    .line 4094
    goto :goto_1

    .line 4096
    :pswitch_3
    const v0, 0x7f020443

    .line 4097
    goto :goto_1

    .line 4099
    :pswitch_4
    const v0, 0x7f020442

    .line 4100
    goto :goto_1

    .line 4085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
