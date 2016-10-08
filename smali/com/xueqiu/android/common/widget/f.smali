.class public Lcom/xueqiu/android/common/widget/f;
.super Landroid/app/Dialog;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/xueqiu/android/common/widget/g;

.field public c:Ljava/lang/String;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field public g:I

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    .line 55
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->setOwnerActivity(Landroid/app/Activity;)V

    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/f;->a:Landroid/content/Context;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/f;->b()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/common/widget/g;)V
    .locals 3

    .prologue
    .line 64
    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    .line 65
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->setOwnerActivity(Landroid/app/Activity;)V

    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/f;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/f;->b()V

    .line 72
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/xueqiu/android/common/widget/f;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/f;-><init>(Landroid/content/Context;Lcom/xueqiu/android/common/widget/g;)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->h:Landroid/widget/FrameLayout;

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->h:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/f;->k:Z

    .line 80
    const v0, 0x7f0e0337

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0e0338

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->l:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0e033a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    .line 83
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->i:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0e033f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->d:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()Lcom/xueqiu/android/common/widget/f;
    .locals 2

    .prologue
    .line 188
    const v0, 0x7f0e033b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object p0
.end method

.method public final a(Z)Lcom/xueqiu/android/common/widget/f;
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/f;->m:Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/f;->setCancelable(Z)V

    .line 197
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 105
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    const v1, 0x7f010121

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    const/4 v1, 0x0

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v1, p0, Lcom/xueqiu/android/common/widget/f;->g:I

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget v1, p0, Lcom/xueqiu/android/common/widget/f;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 117
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 119
    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 120
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->h:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/f;->k:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 232
    :sswitch_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/f;->m:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/xueqiu/android/common/widget/g;->a(Lcom/xueqiu/android/common/widget/f;I)V

    goto :goto_0

    .line 220
    :sswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/xueqiu/android/common/widget/g;->a(Lcom/xueqiu/android/common/widget/f;I)V

    goto :goto_0

    .line 224
    :sswitch_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/xueqiu/android/common/widget/g;->a(Lcom/xueqiu/android/common/widget/f;I)V

    goto :goto_0

    .line 228
    :sswitch_3
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/f;->b:Lcom/xueqiu/android/common/widget/g;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/xueqiu/android/common/widget/g;->a(Lcom/xueqiu/android/common/widget/f;I)V

    goto :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x7f0e0336 -> :sswitch_0
        0x7f0e033d -> :sswitch_1
        0x7f0e033f -> :sswitch_2
        0x7f0e0341 -> :sswitch_3
    .end sparse-switch
.end method
