.class Lcom/c/a/q;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field a:I

.field b:Lcom/c/a/n;

.field c:Lcom/c/a/n;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/n;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/c/a/w;


# direct methods
.method public varargs constructor <init>([Lcom/c/a/n;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/c/a/q;->a:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    iput-object v0, p0, Lcom/c/a/q;->b:Lcom/c/a/n;

    .line 49
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/c/a/q;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    iput-object v0, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    .line 50
    iget-object v0, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    .line 1211
    iget-object v0, v0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 50
    iput-object v0, p0, Lcom/c/a/q;->d:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/q;
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 146
    new-array v4, v3, [Lcom/c/a/n;

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    invoke-virtual {v0}, Lcom/c/a/n;->b()Lcom/c/a/n;

    move-result-object v0

    aput-object v0, v4, v1

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/c/a/q;

    invoke-direct {v0, v4}, Lcom/c/a/q;-><init>([Lcom/c/a/n;)V

    .line 151
    return-object v0
.end method

.method public a(F)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/c/a/q;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/c/a/q;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/c/a/q;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/c/a/q;->f:Lcom/c/a/w;

    iget-object v1, p0, Lcom/c/a/q;->b:Lcom/c/a/n;

    invoke-virtual {v1}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    invoke-virtual {v2}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/c/a/w;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    .line 2211
    iget-object v1, v0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 179
    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/c/a/q;->b:Lcom/c/a/n;

    .line 3191
    iget v1, v1, Lcom/c/a/n;->a:F

    .line 183
    sub-float v2, p1, v1

    .line 4191
    iget v3, v0, Lcom/c/a/n;->a:F

    .line 183
    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 185
    iget-object v2, p0, Lcom/c/a/q;->f:Lcom/c/a/w;

    iget-object v3, p0, Lcom/c/a/q;->b:Lcom/c/a/n;

    invoke-virtual {v3}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/c/a/w;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 188
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/c/a/q;->a:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    .line 189
    iget-object v1, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    .line 4211
    iget-object v1, v1, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 190
    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 5191
    :cond_4
    iget v1, v0, Lcom/c/a/n;->a:F

    .line 194
    sub-float v2, p1, v1

    iget-object v3, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    .line 6191
    iget v3, v3, Lcom/c/a/n;->a:F

    .line 194
    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 196
    iget-object v2, p0, Lcom/c/a/q;->f:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    invoke-virtual {v3}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/c/a/w;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/c/a/q;->b:Lcom/c/a/n;

    move-object v2, v1

    move v1, v0

    .line 200
    :goto_1
    iget v0, p0, Lcom/c/a/q;->a:I

    if-ge v1, v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    .line 7191
    iget v3, v0, Lcom/c/a/n;->a:F

    .line 202
    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 7211
    iget-object v1, v0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 204
    if-eqz v1, :cond_6

    .line 205
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 8191
    :cond_6
    iget v1, v2, Lcom/c/a/n;->a:F

    .line 208
    sub-float v3, p1, v1

    .line 9191
    iget v4, v0, Lcom/c/a/n;->a:F

    .line 208
    sub-float v1, v4, v1

    div-float v1, v3, v1

    .line 210
    iget-object v3, p0, Lcom/c/a/q;->f:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Lcom/c/a/w;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/c/a/q;->c:Lcom/c/a/n;

    invoke-virtual {v0}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/c/a/q;->a()Lcom/c/a/q;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    const-string v1, " "

    .line 222
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/c/a/q;->a:I

    if-ge v1, v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/n;

    invoke-virtual {v0}, Lcom/c/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 225
    :cond_0
    return-object v0
.end method
