.class public Lcom/sleepycat/b/g/e;
.super Lcom/sleepycat/b/g/s;
.source "CleanerFileReader.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field public a:Lcom/sleepycat/b/g/a/m;

.field public b:B

.field public c:Lcom/sleepycat/b/p/au;

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/sleepycat/b/a/o;

.field private final v:Lcom/sleepycat/b/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sleepycat/b/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/e;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;IJLjava/lang/Long;Lcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/q;)V
    .locals 15

    .prologue
    .line 64
    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v13}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 45
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v2, p0, Lcom/sleepycat/b/g/e;->c:Lcom/sleepycat/b/p/au;

    .line 72
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    .line 73
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/g/e;->t:Ljava/util/Map;

    .line 77
    invoke-static {}, Lcom/sleepycat/b/g/af;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/af;

    .line 78
    invoke-virtual {v2}, Lcom/sleepycat/b/g/af;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/sleepycat/b/g/e;->a(BLcom/sleepycat/b/g/af;)V

    .line 86
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/b/g/af;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Lcom/sleepycat/b/g/e;->a(BLcom/sleepycat/b/g/af;)V

    goto :goto_0

    .line 90
    :cond_2
    const/4 v2, 0x2

    sget-object v3, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/g/e;->a(BLcom/sleepycat/b/g/af;)V

    .line 91
    const/4 v2, 0x3

    sget-object v3, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/g/e;->a(BLcom/sleepycat/b/g/af;)V

    .line 92
    const/4 v2, 0x4

    sget-object v3, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/g/e;->a(BLcom/sleepycat/b/g/af;)V

    .line 93
    return-void
.end method

.method private a(BLcom/sleepycat/b/g/af;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->t:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/b/g/f;

    invoke-virtual {p2}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/b/g/f;-><init>(Lcom/sleepycat/b/g/a/m;B)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 1279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 115
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/sleepycat/b/g/e;->d()I

    move-result v2

    .line 120
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 2279
    iget-byte v3, v3, Lcom/sleepycat/b/g/ae;->b:B

    .line 120
    sget-object v4, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    .line 2644
    iget-byte v4, v4, Lcom/sleepycat/b/g/af;->K:B

    .line 120
    if-eq v3, v4, :cond_0

    .line 122
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/b/a/o;->a:I

    .line 123
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/sleepycat/b/a/o;->b:I

    .line 124
    invoke-static {v0}, Lcom/sleepycat/b/a/b;->a(Lcom/sleepycat/b/g/af;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-static {v0}, Lcom/sleepycat/b/a/b;->b(Lcom/sleepycat/b/g/af;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/b/a/o;->e:I

    .line 127
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->f:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/sleepycat/b/a/o;->f:I

    .line 144
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 3307
    iget-boolean v2, v2, Lcom/sleepycat/b/g/ae;->i:Z

    .line 144
    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/e;->b(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual {p0}, Lcom/sleepycat/b/g/e;->b()V

    move v0, v1

    .line 174
    :goto_1
    return v0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/b/a/o;->c:I

    .line 130
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v4, v3, Lcom/sleepycat/b/a/o;->d:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/sleepycat/b/a/o;->d:I

    .line 131
    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v4, v3, Lcom/sleepycat/b/a/q;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/b/a/q;->a:I

    .line 133
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v4, v3, Lcom/sleepycat/b/a/q;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/sleepycat/b/a/q;->b:I

    .line 135
    :cond_2
    sget-object v3, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v4, v3, Lcom/sleepycat/b/a/q;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sleepycat/b/a/q;->c:I

    .line 137
    iget-object v3, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v4, v3, Lcom/sleepycat/b/a/q;->d:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/sleepycat/b/a/q;->d:I

    goto :goto_0

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 4299
    iget-boolean v2, v2, Lcom/sleepycat/b/g/ae;->h:Z

    .line 151
    if-eqz v2, :cond_5

    .line 152
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 5295
    iget-object v2, v2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 153
    if-eqz v2, :cond_5

    .line 155
    sget-boolean v3, Lcom/sleepycat/b/g/e;->d:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sleepycat/b/g/e;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-gtz v3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "vlsns out of order, last="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/g/e;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " current="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 157
    :cond_4
    iput-object v2, p0, Lcom/sleepycat/b/g/e;->c:Lcom/sleepycat/b/p/au;

    .line 165
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->t:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/f;

    .line 166
    if-nez v0, :cond_6

    .line 167
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/e;->b(Ljava/nio/ByteBuffer;)V

    .line 168
    invoke-virtual {p0}, Lcom/sleepycat/b/g/e;->b()V

    move v0, v1

    .line 169
    goto/16 :goto_1

    .line 171
    :cond_6
    iget-byte v1, v0, Lcom/sleepycat/b/g/f;->b:B

    iput-byte v1, p0, Lcom/sleepycat/b/g/e;->b:B

    .line 172
    iget-object v0, v0, Lcom/sleepycat/b/g/f;->a:Lcom/sleepycat/b/g/a/m;

    iput-object v0, p0, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/e;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->k:Lcom/sleepycat/b/g/ae;

    .line 6279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 182
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/sleepycat/b/a/b;->a(Lcom/sleepycat/b/g/af;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/g/e;->d()I

    move-result v1

    .line 188
    invoke-static {v0}, Lcom/sleepycat/b/a/b;->b(Lcom/sleepycat/b/g/af;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v2, v0, Lcom/sleepycat/b/a/o;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sleepycat/b/a/o;->i:I

    .line 190
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v2, v0, Lcom/sleepycat/b/a/o;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/b/a/o;->j:I

    .line 191
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v1, v0, Lcom/sleepycat/b/a/o;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/a/o;->k:I

    goto :goto_0

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->u:Lcom/sleepycat/b/a/o;

    iget v3, v2, Lcom/sleepycat/b/a/o;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/o;->h:I

    .line 194
    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v3, v2, Lcom/sleepycat/b/a/q;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/q;->e:I

    .line 196
    iget-object v2, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v3, v2, Lcom/sleepycat/b/a/q;->f:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/b/a/q;->f:I

    .line 198
    :cond_3
    sget-object v2, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v2, v0, Lcom/sleepycat/b/a/q;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sleepycat/b/a/q;->g:I

    .line 200
    iget-object v0, p0, Lcom/sleepycat/b/g/e;->v:Lcom/sleepycat/b/a/q;

    iget v2, v0, Lcom/sleepycat/b/a/q;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/b/a/q;->h:I

    goto :goto_0
.end method
