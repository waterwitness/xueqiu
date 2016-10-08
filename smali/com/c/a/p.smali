.class final Lcom/c/a/p;
.super Lcom/c/a/n;
.source "Keyframe.java"


# instance fields
.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/c/a/n;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/p;->a:F

    .line 291
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/p;->b:Ljava/lang/Class;

    .line 292
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/c/a/n;-><init>()V

    .line 283
    iput p1, p0, Lcom/c/a/p;->a:F

    .line 284
    iput p2, p0, Lcom/c/a/p;->e:I

    .line 285
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/p;->b:Ljava/lang/Class;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/p;->d:Z

    .line 287
    return-void
.end method

.method private c()Lcom/c/a/p;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lcom/c/a/p;

    .line 1191
    iget v1, p0, Lcom/c/a/n;->a:F

    .line 311
    iget v2, p0, Lcom/c/a/p;->e:I

    invoke-direct {v0, v1, v2}, Lcom/c/a/p;-><init>(FI)V

    .line 1211
    iget-object v1, p0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 1221
    iput-object v1, v0, Lcom/c/a/n;->c:Landroid/view/animation/Interpolator;

    .line 313
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/c/a/p;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 304
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/c/a/p;->e:I

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/p;->d:Z

    .line 307
    :cond_0
    return-void
.end method

.method public final synthetic b()Lcom/c/a/n;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/c/a/p;->c()Lcom/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/c/a/p;->c()Lcom/c/a/p;

    move-result-object v0

    return-object v0
.end method
