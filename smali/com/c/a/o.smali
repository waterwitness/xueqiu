.class final Lcom/c/a/o;
.super Lcom/c/a/n;
.source "Keyframe.java"


# instance fields
.field e:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/c/a/n;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/o;->a:F

    .line 335
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/o;->b:Ljava/lang/Class;

    .line 336
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/c/a/n;-><init>()V

    .line 327
    iput p1, p0, Lcom/c/a/o;->a:F

    .line 328
    iput p2, p0, Lcom/c/a/o;->e:F

    .line 329
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/o;->b:Ljava/lang/Class;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/o;->d:Z

    .line 331
    return-void
.end method

.method private c()Lcom/c/a/o;
    .locals 3

    .prologue
    .line 355
    new-instance v0, Lcom/c/a/o;

    .line 1191
    iget v1, p0, Lcom/c/a/n;->a:F

    .line 355
    iget v2, p0, Lcom/c/a/o;->e:F

    invoke-direct {v0, v1, v2}, Lcom/c/a/o;-><init>(FF)V

    .line 1211
    iget-object v1, p0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 1221
    iput-object v1, v0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 357
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/c/a/o;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 348
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/c/a/o;->e:F

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/o;->d:Z

    .line 351
    :cond_0
    return-void
.end method

.method public final synthetic b()Lcom/c/a/n;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/c/a/o;->c()Lcom/c/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/c/a/o;->c()Lcom/c/a/o;

    move-result-object v0

    return-object v0
.end method
