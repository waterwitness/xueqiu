.class public Lcom/xueqiu/android/cube/CubeEditActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeEditActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/cube/model/Cube;

.field private k:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->j:Lcom/xueqiu/android/cube/model/Cube;

    .line 45
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/xueqiu/android/base/util/u;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/xueqiu/android/base/util/u;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->j:Lcom/xueqiu/android/cube/model/Cube;

    .line 3053
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3054
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0008

    if-ne v0, v1, :cond_5

    .line 3115
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3116
    const v0, 0x7f07041c

    .line 3125
    :goto_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 3127
    const/4 v0, 0x0

    .line 66
    :goto_1
    if-nez v0, :cond_3

    move v0, v7

    .line 110
    :goto_2
    return v0

    .line 3117
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 3118
    const v0, 0x7f07041b

    goto :goto_0

    .line 3119
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 3120
    const v0, 0x7f070418

    goto :goto_0

    :cond_2
    move v0, v7

    .line 3122
    goto :goto_1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->j:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSpCube()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->j:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/cube/CubeEditActivity$1;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/cube/CubeEditActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeEditActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3418
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :goto_3
    move v0, v7

    .line 108
    goto :goto_2

    .line 4180
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->j:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/cube/CubeEditActivity$2;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/cube/CubeEditActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeEditActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4414
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/c;->a(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_3

    .line 110
    :cond_5
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_2
.end method
