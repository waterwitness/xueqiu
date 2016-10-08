.class final Lcom/sleepycat/b/p/as;
.super Ljava/lang/Object;
.source "TinyHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/sleepycat/b/p/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ar",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/b/p/ar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/ar",
            "<TT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/sleepycat/b/p/as;->a:Lcom/sleepycat/b/p/ar;

    .line 180
    iput-object p2, p0, Lcom/sleepycat/b/p/as;->b:Ljava/lang/Object;

    .line 181
    iput-object p3, p0, Lcom/sleepycat/b/p/as;->c:Ljava/lang/Object;

    .line 182
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/p/as;->d:Z

    .line 183
    if-nez p3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/b/p/as;->e:Z

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    :cond_1
    move v1, v2

    .line 183
    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->d:Z

    if-nez v0, :cond_0

    .line 192
    iput-boolean v1, p0, Lcom/sleepycat/b/p/as;->d:Z

    .line 193
    iget-object v0, p0, Lcom/sleepycat/b/p/as;->b:Ljava/lang/Object;

    .line 197
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->e:Z

    if-nez v0, :cond_1

    .line 196
    iput-boolean v1, p0, Lcom/sleepycat/b/p/as;->e:Z

    .line 197
    iget-object v0, p0, Lcom/sleepycat/b/p/as;->c:Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/as;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sleepycat/b/p/as;->a:Lcom/sleepycat/b/p/ar;

    invoke-static {v0}, Lcom/sleepycat/b/p/ar;->a(Lcom/sleepycat/b/p/ar;)Ljava/lang/Object;

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/p/as;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/p/as;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sleepycat/b/p/as;->a:Lcom/sleepycat/b/p/ar;

    invoke-static {v0}, Lcom/sleepycat/b/p/ar;->b(Lcom/sleepycat/b/p/ar;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    goto :goto_0
.end method
