.class public Lcom/sleepycat/b/g/a/q;
.super Lcom/sleepycat/b/g/a/c;
.source "SingleItemEntry.java"

# interfaces
.implements Lcom/sleepycat/b/g/a/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/b/g/at;",
        ">",
        "Lcom/sleepycat/b/g/a/c",
        "<TT;>;",
        "Lcom/sleepycat/b/g/a/m;"
    }
.end annotation


# instance fields
.field public c:Lcom/sleepycat/b/g/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/af;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/c;-><init>()V

    .line 1027
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/af;)V

    .line 65
    iput-object p2, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/c;-><init>(Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method public static a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/b/g/at;",
            ">(",
            "Lcom/sleepycat/b/g/af;",
            "TT;)",
            "Lcom/sleepycat/b/g/a/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/sleepycat/b/g/a/q;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/g/a/q;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/b/g/at;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/sleepycat/b/g/a/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/sleepycat/b/g/a/q;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/g/a/q;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/b/g/at;->a(Ljava/lang/StringBuilder;Z)V

    .line 87
    return-object p1
.end method

.method public a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 76
    .line 1076
    iget-object v0, p0, Lcom/sleepycat/b/g/a/c;->a:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/c;->a(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/b/g/at;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 77
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 1283
    iget v1, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 77
    invoke-interface {v0, p3, v1}, Lcom/sleepycat/b/g/at;->a(Ljava/nio/ByteBuffer;I)V

    .line 78
    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/g/af;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/af;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    invoke-interface {v0, p1}, Lcom/sleepycat/b/g/at;->a(Ljava/nio/ByteBuffer;)V

    .line 133
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/a/m;)Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    invoke-interface {p1}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/at;

    invoke-interface {v1, v0}, Lcom/sleepycat/b/g/at;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->c(Lcom/sleepycat/b/c/i;)V

    return-void
.end method

.method public final bridge synthetic d()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->d()Lcom/sleepycat/b/g/af;

    move-result-object v0

    return-object v0
.end method

.method public final d_()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    invoke-interface {v0}, Lcom/sleepycat/b/g/at;->a()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic e()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->e()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->f()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->g()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .line 2102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 27
    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    invoke-interface {v0}, Lcom/sleepycat/b/g/at;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
