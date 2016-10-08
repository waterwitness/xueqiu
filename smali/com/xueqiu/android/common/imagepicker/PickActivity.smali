.class public Lcom/xueqiu/android/common/imagepicker/PickActivity;
.super Lcom/xueqiu/android/common/b;
.source "PickActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/imagepicker/d;

.field private k:Landroid/widget/GridView;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/imagepicker/c;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Lcom/xueqiu/android/common/imagepicker/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->r:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    const-string v1, "data"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    .line 3150
    iget-object v3, v3, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 126
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 127
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->finish()V

    .line 129
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    .line 4150
    iget-object v2, v2, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->q:Landroid/widget/Button;

    const-string v4, "%s(%d/%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f07035f

    invoke-virtual {p0, v6}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    .line 5138
    iget v7, v7, Lcom/xueqiu/android/common/imagepicker/d;->d:I

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->q:Landroid/widget/Button;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 134
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j()V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->k:Landroid/widget/GridView;

    .line 43
    const v0, 0x7f0e0138

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->q:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/imagepicker/PickActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity$1;-><init>(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->r:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;-><init>(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/xueqiu/android/common/imagepicker/d;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, p0, v0, v2}, Lcom/xueqiu/android/common/imagepicker/d;-><init>(Landroid/content/Context;Lcom/d/a/b/f;[I)V

    iput-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    new-instance v1, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;-><init>(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V

    .line 1146
    iput-object v1, v0, Lcom/xueqiu/android/common/imagepicker/d;->c:Lcom/xueqiu/android/common/imagepicker/e;

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_images"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->p:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->p:Ljava/util/List;

    .line 2129
    iput-object v1, v0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

    .line 2130
    invoke-virtual {v0}, Lcom/xueqiu/android/common/imagepicker/d;->notifyDataSetChanged()V

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->r:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity;->j:Lcom/xueqiu/android/common/imagepicker/d;

    .line 2150
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 87
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->k()V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :array_0
    .array-data 4
        0x7f0e0344
        0x7f0e00a3
    .end array-data
.end method
