.class public final Lcom/sleepycat/b/g/a/j;
.super Lcom/sleepycat/b/g/a/c;
.source "INLogEntry.java"

# interfaces
.implements Lcom/sleepycat/b/g/a/i;
.implements Lcom/sleepycat/b/g/a/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/b/l/j;",
        ">",
        "Lcom/sleepycat/b/g/a/c",
        "<TT;>;",
        "Lcom/sleepycat/b/g/a/i;",
        "Lcom/sleepycat/b/g/a/m;"
    }
.end annotation


# instance fields
.field public c:Lcom/sleepycat/b/l/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Lcom/sleepycat/b/c/h;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/l/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/c;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->y()Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 1034
    invoke-super {p0, v0}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/af;)V

    .line 68
    iput-object p1, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    .line 1717
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 2496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 69
    iput-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    .line 3468
    iget-wide v0, p1, Lcom/sleepycat/b/l/j;->m:J

    .line 70
    iput-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    .line 71
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/a/j;->f:J

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/c;-><init>(Ljava/lang/Class;)V

    .line 61
    return-void
.end method

.method public static b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/b/l/j;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/sleepycat/b/g/a/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/sleepycat/b/g/a/j;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/g/a/j;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 129
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/StringBuilder;Z)V

    .line 130
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 131
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "<prevFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, "</prevFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "<prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->f:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, "</prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    return-object p1
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    .line 4283
    iget v4, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 86
    const/4 v0, 0x6

    if-lt v4, v0, :cond_3

    move v1, v2

    .line 87
    :goto_0
    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p3, v4}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 90
    invoke-static {p3, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/b/g/a/j;->e:J

    .line 91
    const/16 v0, 0x8

    if-lt v4, v0, :cond_0

    .line 92
    invoke-static {p3}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/b/g/a/j;->f:J

    .line 5076
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/c;->a:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/c;->a(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/b/g/at;

    move-result-object v0

    .line 96
    check-cast v0, Lcom/sleepycat/b/l/j;

    iput-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0, p3, v4}, Lcom/sleepycat/b/l/j;->a(Ljava/nio/ByteBuffer;I)V

    .line 98
    if-nez v1, :cond_1

    .line 99
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    .line 100
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p3, v4}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 102
    :cond_1
    if-gtz v4, :cond_4

    .line 103
    iput-wide v8, p0, Lcom/sleepycat/b/g/a/j;->e:J

    .line 114
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 86
    goto :goto_0

    .line 104
    :cond_4
    if-ne v4, v2, :cond_6

    .line 105
    invoke-static {p3}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 106
    const-wide v4, 0xffffffffL

    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    .line 107
    iput-wide v8, p0, Lcom/sleepycat/b/g/a/j;->e:J

    goto :goto_1

    .line 109
    :cond_5
    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    goto :goto_1

    .line 111
    :cond_6
    if-nez v1, :cond_2

    .line 112
    invoke-static {p3, v2}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    goto :goto_1
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/g/af;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->a(Lcom/sleepycat/b/g/af;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;)V

    .line 180
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 181
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->f:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 182
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/j;->a(Ljava/nio/ByteBuffer;)V

    .line 183
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/a/m;)Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->e:J

    return-wide v0
.end method

.method public final b(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/j;->f:J

    return-wide v0
.end method

.method public final bridge synthetic c(Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/c;->c(Lcom/sleepycat/b/c/i;)V

    return-void
.end method

.method public final bridge synthetic d()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->d()Lcom/sleepycat/b/g/af;

    move-result-object v0

    return-object v0
.end method

.method public final d_()I
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/a/j;->e:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/a/j;->f:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic e()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->e()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->f()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->g()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sleepycat/b/g/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
