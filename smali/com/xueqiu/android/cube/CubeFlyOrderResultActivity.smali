.class public Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeFlyOrderResultActivity.java"


# instance fields
.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private p:Lcom/xueqiu/android/cube/model/Cube;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->k:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->p:Lcom/xueqiu/android/cube/model/Cube;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V
    .locals 5

    .prologue
    .line 3145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6211\u521a\u521a\u4f7f\u7528\u4e00\u952e\u4e0b\u5355\u8d2d\u4e70\u4e86 $"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->p:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->p:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")$ \u4e2d\u7684\u80a1\u7968 #\u98de\u53bb\u8d5a\u94b1#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3147
    const v2, 0x7f07037f

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070070

    .line 3148
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700b1

    .line 3154
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3171
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3172
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 34
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->p:Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 190
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x583

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v6, 0x7f0e03a6

    const v5, 0x7f0e03a4

    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0700ea

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cube_fly_order_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cube_fly_order_tid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->k:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cube_fly_order_cube"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->p:Lcom/xueqiu/android/cube/model/Cube;

    .line 58
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V

    .line 60
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    .line 1179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/g;

    .line 1180
    const-string v2, "60000"

    iget-object v0, v0, Lcom/xueqiu/android/cube/g;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    .line 2074
    :goto_1
    const v0, 0x7f0e03a8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2075
    const v2, 0x7f0e03a7

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2076
    if-eqz v1, :cond_5

    .line 2077
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020180

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2078
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0700e0

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2079
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2080
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    :cond_4
    const v0, 0x7f0e03a9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    const v0, 0x7f0e03aa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2082
    :cond_5
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f02017f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2083
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0700d7

    invoke-virtual {p0, v5}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2084
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2085
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2116
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v5, v3

    .line 2117
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 2118
    const v1, 0x7f0300f5

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2119
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/g;

    .line 2120
    const-string v2, "BUY"

    iget-object v7, v1, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    iget-object v7, v7, Lcom/xueqiu/android/cube/e;->action:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2121
    const v2, 0x7f0e03ab

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v7, "\u4e70"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    :cond_6
    :goto_3
    const v2, 0x7f0e03ac

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    iget-object v7, v7, Lcom/xueqiu/android/cube/e;->sname:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    const v2, 0x7f0e03ad

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    iget-object v7, v7, Lcom/xueqiu/android/cube/e;->price:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    const v2, 0x7f0e03ae

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v7, "%s\u80a1"

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    iget-object v9, v9, Lcom/xueqiu/android/cube/e;->amount:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    const-string v2, "60000"

    iget-object v7, v1, Lcom/xueqiu/android/cube/g;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2131
    const v1, 0x7f070251

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2135
    :goto_4
    const v1, 0x7f0e03af

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_7

    .line 2138
    const v1, 0x7f0e03b0

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2140
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2117
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    .line 2122
    :cond_8
    const-string v2, "SELL"

    iget-object v7, v1, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    iget-object v7, v7, Lcom/xueqiu/android/cube/e;->action:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2123
    const v2, 0x7f0e03ab

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v7, "\u5356"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2133
    :cond_9
    iget-object v1, v1, Lcom/xueqiu/android/cube/g;->msg:Ljava/lang/String;

    move-object v2, v1

    goto :goto_4

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method
