.class public Lcom/xueqiu/android/trade/PAAccountVideoActivity;
.super Lcom/xueqiu/android/base/j;
.source "PAAccountVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xueqiu/android/trade/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/trade/d/f;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xueqiu/android/trade/b/i;"
    }
.end annotation


# instance fields
.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/view/SurfaceView;

.field private r:Landroid/view/SurfaceView;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/xueqiu/android/base/h5/b;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->q:Landroid/view/SurfaceView;

    .line 31
    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->r:Landroid/view/SurfaceView;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->s:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->finish()V

    .line 136
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 8

    .prologue
    .line 24
    .line 5076
    new-instance v0, Lcom/xueqiu/android/trade/d/f;

    iget-object v2, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->t:Lcom/xueqiu/android/base/h5/b;

    iget-object v5, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->q:Landroid/view/SurfaceView;

    iget-object v7, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->r:Landroid/view/SurfaceView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/f;-><init>(Lcom/xueqiu/android/trade/b/i;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 24
    return-object v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 4173
    iget-object v1, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/d/f;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/b/i;->a(Landroid/content/Intent;)V

    .line 129
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onBackPressed()V

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3178
    iget-object v1, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingan/main/PAVideoManage;->hangup()V

    .line 3179
    iget-object v1, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/d/f;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/b/i;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01b5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 45
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->setContentView(I)V

    .line 2057
    const v0, 0x7f0e01b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2058
    const v1, 0x7f0e01bd

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->s:Landroid/widget/TextView;

    .line 2059
    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->w:Landroid/widget/RelativeLayout;

    .line 2060
    const v1, 0x7f0e01bb

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->x:Landroid/widget/ImageView;

    .line 2061
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2062
    const v0, 0x7f0e01b7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->p:Landroid/widget/RelativeLayout;

    .line 2063
    const v0, 0x7f0e01b8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->q:Landroid/view/SurfaceView;

    .line 2064
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->q:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2065
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2066
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2067
    iget-object v1, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->q:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2068
    const v0, 0x7f0e01b9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->r:Landroid/view/SurfaceView;

    .line 2070
    const v0, 0x7f040011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->y:Landroid/view/animation/Animation;

    .line 2071
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->y:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 48
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 50
    const-string v0, "extra_event"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->t:Lcom/xueqiu/android/base/h5/b;

    .line 51
    const-string v0, "pavideo_channel_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->u:Ljava/lang/String;

    .line 52
    const-string v0, "pavideo_uid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->v:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3168
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPADestroy()V

    .line 112
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3153
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPAPause()V

    .line 101
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3143
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPARestart()V

    .line 88
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onRestart()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3148
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPAResume()V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 2158
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPAStart()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/PAAccountVideoActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/d/f;

    .line 3163
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage;->onPAStop()V

    .line 106
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onStop()V

    .line 107
    return-void
.end method
