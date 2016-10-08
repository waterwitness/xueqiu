.class public final Lorg/apache/a/b/o;
.super Lorg/apache/a/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/a/b/b;-><init>(B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/a/b/b;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/a/c/d;)Lorg/apache/a/b/h;
    .locals 3

    new-instance v0, Lorg/apache/a/b/n;

    iget-boolean v1, p0, Lorg/apache/a/b/o;->a:Z

    iget-boolean v2, p0, Lorg/apache/a/b/o;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/a/b/n;-><init>(Lorg/apache/a/c/d;ZZ)V

    iget v1, p0, Lorg/apache/a/b/o;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/a/b/o;->c:I

    invoke-virtual {v0, v1}, Lorg/apache/a/b/a;->c(I)V

    :cond_0
    return-object v0
.end method
