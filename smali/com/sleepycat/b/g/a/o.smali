.class public Lcom/sleepycat/b/g/a/o;
.super Lcom/sleepycat/b/g/a/k;
.source "NameLNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/k",
        "<",
        "Lcom/sleepycat/b/l/ab;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic k:Z


# instance fields
.field public h:Lcom/sleepycat/b/g/a/f;

.field public i:Lcom/sleepycat/b/c/h;

.field public j:Lcom/sleepycat/b/c/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/sleepycat/b/g/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/a/o;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/sleepycat/b/l/ab;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/a/k;-><init>(Ljava/lang/Class;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/c/h;[BJZLcom/sleepycat/b/n/z;Lcom/sleepycat/b/g/av;)V
    .locals 3

    .prologue
    .line 114
    invoke-direct/range {p0 .. p8}, Lcom/sleepycat/b/g/a/k;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[BJZLcom/sleepycat/b/n/z;)V

    .line 117
    invoke-virtual {p9}, Lcom/sleepycat/b/g/av;->a()Lcom/sleepycat/b/g/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    .line 118
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p9

    .line 119
    check-cast v0, Lcom/sleepycat/b/g/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/g;->b()Lcom/sleepycat/b/c/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne v0, v1, :cond_1

    .line 124
    check-cast p9, Lcom/sleepycat/b/g/g;

    invoke-virtual {p9}, Lcom/sleepycat/b/g/g;->c()Lcom/sleepycat/b/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/g/a/k;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/g/a/f;->a(Ljava/lang/StringBuilder;Z)V

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/ax;->a(Ljava/lang/StringBuilder;Z)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 181
    :cond_1
    return-object p1
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/g/a/o;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;Z)V

    .line 1283
    iget v0, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 147
    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 148
    invoke-static {p3}, Lcom/sleepycat/b/g/a/f;->b(Ljava/nio/ByteBuffer;)Lcom/sleepycat/b/g/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    .line 150
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-static {v1}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Lcom/sleepycat/b/c/ax;

    invoke-direct {v1}, Lcom/sleepycat/b/c/ax;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    .line 152
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    invoke-virtual {v1, p3, v0}, Lcom/sleepycat/b/c/ax;->a(Ljava/nio/ByteBuffer;I)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    sget-object v2, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne v1, v2, :cond_1

    .line 156
    new-instance v1, Lcom/sleepycat/b/c/h;

    invoke-direct {v1}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    .line 157
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, p3, v0}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    sget-object v0, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    iput-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/k;->a(Ljava/lang/StringBuilder;)V

    .line 294
    const-string v0, " dbop="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/g/a/o;->a(Ljava/nio/ByteBuffer;I)V

    .line 210
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/b/g/a/o;->a(Ljava/nio/ByteBuffer;ZI)V

    .line 225
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    .line 2091
    invoke-static {v0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 226
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    .line 3064
    invoke-static {v0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    .line 4064
    invoke-static {v0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 238
    :cond_1
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/a/m;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/g/a/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    check-cast p1, Lcom/sleepycat/b/g/a/o;

    .line 250
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/h;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/ax;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d_()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/a/o;->a(Z)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/a/f;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    invoke-static {v1}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->j:Lcom/sleepycat/b/c/ax;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ax;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    sget-object v2, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne v1, v2, :cond_1

    .line 198
    iget-object v1, p0, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_1
    return v0
.end method
