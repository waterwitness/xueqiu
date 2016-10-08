.class public Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeRbAnalysisActivity.java"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/xueqiu/android/common/widget/RotateImageView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Lcom/google/gson/JsonObject;

.field private z:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 145
    new-instance v0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->z:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/Button;ZZ)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Landroid/widget/Button;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 39
    .line 3220
    const v0, 0x7f0e042b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3221
    const v3, 0x7f0e042f

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3223
    if-eqz p1, :cond_0

    const-string v4, "values"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "values"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v4, p2, :cond_1

    .line 3224
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3225
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3273
    :goto_0
    return-void

    .line 3229
    :cond_1
    const-string v4, "values"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 3231
    const-string v6, "warning"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "warning"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "warning"

    .line 3232
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3233
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3234
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3235
    const-string v0, "warning"

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3239
    :cond_2
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3240
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3241
    const-string v0, "value"

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v3

    .line 3242
    const-string v0, "max_value"

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v6

    .line 3243
    div-float v4, v3, v6

    .line 3244
    const v0, 0x7f0e042e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3245
    cmpl-float v7, v3, v2

    if-lez v7, :cond_4

    .line 3246
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3247
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    .line 3249
    const-string v3, "100"

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3257
    :goto_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3259
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3260
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 3261
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3262
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_5

    .line 3263
    new-array v0, v1, [F

    aput v2, v0, v10

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3264
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3265
    new-instance v1, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 3251
    :cond_3
    new-instance v7, Ljava/math/BigDecimal;

    div-float v3, v6, v3

    float-to-double v8, v3

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    invoke-virtual {v7, v10, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3252
    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3255
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3274
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->u:Landroid/widget/TextView;

    const-string v1, "<1%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->y:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method private static b(Landroid/widget/Button;ZZ)V
    .locals 3

    .prologue
    const v2, 0x7f0d0148

    const v1, 0x7f0d006b

    .line 122
    if-nez p0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_0
    if-eqz p2, :cond_2

    .line 127
    if-eqz p1, :cond_1

    .line 128
    const v0, 0x7f0202ea

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 131
    :cond_1
    const v0, 0x7f0202e9

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 135
    :cond_2
    if-eqz p1, :cond_3

    .line 136
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 137
    const v0, 0x7f02038a

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    :cond_3
    const v0, 0x7f020389

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V
    .locals 10

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 39
    .line 3279
    const v0, 0x7f0e0432

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3280
    const v1, 0x7f0e0435

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3281
    if-eqz p1, :cond_0

    const-string v2, "values"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "values"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 3282
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3283
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3293
    :goto_0
    return-void

    .line 3287
    :cond_1
    const-string v2, "values"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 3288
    const-string v5, "warning"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "warning"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "warning"

    .line 3289
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3290
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3291
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3292
    const-string v0, "warning"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3295
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3296
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3297
    const-string v0, "value"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    .line 3298
    const-string v1, "max_value"

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    .line 3299
    div-float/2addr v0, v1

    .line 3311
    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 3312
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->t:Landroid/view/View;

    const v2, 0x7f02038c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3313
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->v:Landroid/widget/TextView;

    const-string v2, "\u5dee"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3302
    :goto_1
    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 3303
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const v6, 0x3f63d70a    # 0.89f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 3305
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 3306
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 3307
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->s:Lcom/xueqiu/android/common/widget/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 3314
    :cond_3
    cmpg-float v1, v0, v4

    if-gez v1, :cond_4

    .line 3315
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->t:Landroid/view/View;

    const v2, 0x7f02038e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3316
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->v:Landroid/widget/TextView;

    const-string v2, "\u8f83\u5dee"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3317
    :cond_4
    float-to-double v6, v0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v6, v8

    if-gez v1, :cond_5

    .line 3318
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->t:Landroid/view/View;

    const v2, 0x7f02038f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3319
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->v:Landroid/widget/TextView;

    const-string v2, "\u8f83\u597d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3321
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->t:Landroid/view/View;

    const v2, 0x7f02038d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3322
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->v:Landroid/widget/TextView;

    const-string v2, "\u597d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->w:Ljava/lang/String;

    const/4 v2, 0x3

    new-instance v3, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;

    invoke-direct {v3, p0, p0, p1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 217
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->z:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 327
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 329
    const-string v1, "\u76f8\u5f53\u4e8e\u6bcf "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 330
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 331
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#ff7700"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 333
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    .line 332
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 334
    const-string v1, " \u5929\u5c06\u6301\u4ed3\u80a1\u7968\u5168\u90e8\u6362\u4e00\u904d"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->y:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0700ce

    const v7, 0x7f020388

    const v6, 0x7f0202e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->setContentView(I)V

    .line 79
    const-string v0, "\u8c03\u4ed3\u5206\u6790"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->w:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->x:J

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 1091
    :cond_0
    const v0, 0x7f0e0429

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    .line 1092
    const v0, 0x7f0e042a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    .line 1093
    const v0, 0x7f0e0430

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    .line 1094
    const v0, 0x7f0e0431

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    .line 1095
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0700cf

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    invoke-static {v8}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    const v1, 0x7f0700cf

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    invoke-static {v8}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1107
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->j:Landroid/widget/Button;

    invoke-static {v0, v5, v5}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Landroid/widget/Button;ZZ)V

    .line 1108
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->k:Landroid/widget/Button;

    invoke-static {v0, v4, v4}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Landroid/widget/Button;ZZ)V

    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->p:Landroid/widget/Button;

    invoke-static {v0, v5, v5}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Landroid/widget/Button;ZZ)V

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->q:Landroid/widget/Button;

    invoke-static {v0, v4, v4}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Landroid/widget/Button;ZZ)V

    .line 1112
    const v0, 0x7f0e042d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->r:Landroid/widget/ImageView;

    .line 1113
    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->s:Lcom/xueqiu/android/common/widget/RotateImageView;

    .line 1114
    const v0, 0x7f0e0433

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->t:Landroid/view/View;

    .line 1116
    const v0, 0x7f0e042c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->u:Landroid/widget/TextView;

    .line 1117
    const v0, 0x7f0e0434

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->v:Landroid/widget/TextView;

    .line 1190
    const-string v0, "turnover"

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Ljava/lang/String;)V

    .line 1191
    const-string v0, "liquidity"

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    const v0, 0x7f0702d8

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 343
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 344
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 350
    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->x:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 351
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    const-string v2, "extra_id"

    iget-wide v4, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->x:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x57e

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 355
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 359
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
