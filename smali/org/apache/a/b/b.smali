.class public Lorg/apache/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/a/b/j;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/a/b/b;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/a/b/b;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/a/b/b;->a:Z

    iput-boolean v1, p0, Lorg/apache/a/b/b;->b:Z

    iput-boolean p1, p0, Lorg/apache/a/b/b;->a:Z

    iput-boolean v1, p0, Lorg/apache/a/b/b;->b:Z

    iput p2, p0, Lorg/apache/a/b/b;->c:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/a/c/d;)Lorg/apache/a/b/h;
    .locals 3

    new-instance v0, Lorg/apache/a/b/a;

    iget-boolean v1, p0, Lorg/apache/a/b/b;->a:Z

    iget-boolean v2, p0, Lorg/apache/a/b/b;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/a/b/a;-><init>(Lorg/apache/a/c/d;ZZ)V

    iget v1, p0, Lorg/apache/a/b/b;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/a/b/b;->c:I

    invoke-virtual {v0, v1}, Lorg/apache/a/b/a;->c(I)V

    :cond_0
    return-object v0
.end method
