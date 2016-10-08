.class public final Lcom/pingan/b/c/k;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private final a:Lcom/pingan/b/c/a;

.field private final b:Lcom/pingan/b/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/pingan/b/c/b;

    invoke-direct {v0}, Lcom/pingan/b/c/b;-><init>()V

    invoke-virtual {v0}, Lcom/pingan/b/c/b;->a()Lcom/pingan/b/c/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pingan/b/c/k;-><init>(Lcom/pingan/b/c/a;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/pingan/b/c/a;)V
    .locals 7

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/pingan/b/c/k;->a:Lcom/pingan/b/c/a;

    .line 27
    new-instance v0, Lcom/pingan/b/a/f;

    iget-object v1, p1, Lcom/pingan/b/c/a;->h:Lcom/pingan/b/a/k;

    new-instance v2, Lcom/pingan/b/a/n;

    invoke-direct {v2}, Lcom/pingan/b/a/n;-><init>()V

    iget-object v3, p1, Lcom/pingan/b/c/a;->c:Ljava/lang/String;

    iget v4, p1, Lcom/pingan/b/c/a;->k:I

    iget v5, p1, Lcom/pingan/b/c/a;->l:I

    iget-object v6, p1, Lcom/pingan/b/c/a;->n:Lcom/pingan/b/a/p;

    invoke-direct/range {v0 .. v6}, Lcom/pingan/b/a/f;-><init>(Lcom/pingan/b/a/k;Lcom/pingan/b/a/g;Ljava/lang/String;IILcom/pingan/b/a/p;)V

    iput-object v0, p0, Lcom/pingan/b/c/k;->b:Lcom/pingan/b/a/f;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/b/c/h;Lcom/pingan/b/c/l;)V
    .locals 20

    .prologue
    .line 112
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2048
    const/16 v18, 0x0

    .line 2051
    if-eqz p4, :cond_0

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2052
    :cond_0
    const-string v18, "no token"

    .line 2054
    :cond_1
    if-eqz v18, :cond_3

    .line 2105
    new-instance v5, Lcom/pingan/b/a/m;

    const/4 v6, -0x4

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v13, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v5 .. v18}, Lcom/pingan/b/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 2056
    new-instance v4, Lcom/pingan/b/c/k$1;

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1, v5}, Lcom/pingan/b/c/k$1;-><init>(Lcom/pingan/b/c/h;Ljava/lang/String;Lcom/pingan/b/a/m;)V

    invoke-static {v4}, Lcom/pingan/b/d/a;->a(Ljava/lang/Runnable;)V

    .line 2062
    const/4 v4, 0x1

    .line 1126
    :goto_0
    if-nez v4, :cond_2

    .line 1129
    invoke-static/range {p4 .. p4}, Lcom/pingan/b/c/j;->a(Ljava/lang/String;)Lcom/pingan/b/c/j;

    move-result-object v8

    .line 1130
    if-nez v8, :cond_4

    .line 1131
    const-string v18, "invalid token"

    .line 2110
    new-instance v5, Lcom/pingan/b/a/m;

    const/4 v6, -0x5

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v13, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v5 .. v18}, Lcom/pingan/b/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 1132
    new-instance v4, Lcom/pingan/b/c/k$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/pingan/b/c/k$2;-><init>(Lcom/pingan/b/c/k;Lcom/pingan/b/c/h;Ljava/lang/String;Lcom/pingan/b/a/m;)V

    invoke-static {v4}, Lcom/pingan/b/d/a;->a(Ljava/lang/Runnable;)V

    .line 1143
    :cond_2
    :goto_1
    return-void

    .line 2064
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1140
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1141
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pingan/b/c/k;->a:Lcom/pingan/b/c/a;

    iget v6, v6, Lcom/pingan/b/c/a;->j:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 1142
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pingan/b/c/k;->b:Lcom/pingan/b/a/f;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pingan/b/c/k;->a:Lcom/pingan/b/c/a;

    .line 3061
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3062
    new-instance v12, Lcom/pingan/b/a/i;

    invoke-direct {v12}, Lcom/pingan/b/a/i;-><init>()V

    .line 3063
    if-eqz p3, :cond_5

    .line 3066
    move-object/from16 v0, p3

    iput-object v0, v12, Lcom/pingan/b/a/i;->d:Ljava/lang/String;

    .line 3071
    :goto_2
    const-string v5, "token"

    iget-object v6, v8, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/pingan/b/c/l;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3090
    new-instance v13, Lcom/pingan/b/c/c$1;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/pingan/b/c/c$1;-><init>(Lcom/pingan/b/c/l;Ljava/lang/String;)V

    .line 3101
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/pingan/b/a/i;->a:[B

    .line 3102
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/pingan/b/a/i;->b:Ljava/io/File;

    .line 3104
    iput-object v4, v12, Lcom/pingan/b/a/i;->c:Ljava/util/Map;

    .line 3106
    new-instance v4, Lcom/pingan/b/c/c$2;

    move-object/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v13}, Lcom/pingan/b/c/c$2;-><init>(Lcom/pingan/b/c/l;Ljava/lang/String;Lcom/pingan/b/c/h;Lcom/pingan/b/c/j;Lcom/pingan/b/c/a;Lcom/pingan/b/a/f;Ljava/lang/String;Lcom/pingan/b/a/i;Lcom/pingan/b/a/j;)V

    .line 3140
    iget-object v5, v9, Lcom/pingan/b/c/a;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/pingan/b/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p6

    iget-object v15, v0, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    const/16 v16, 0x0

    move-object v14, v4

    invoke-virtual/range {v10 .. v16}, Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lcom/pingan/b/a/i;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/a/c;Z)V

    goto :goto_1

    .line 3068
    :cond_5
    const-string v5, "?"

    iput-object v5, v12, Lcom/pingan/b/a/i;->d:Ljava/lang/String;

    goto :goto_2

    .line 1145
    :cond_6
    new-instance v9, Lcom/pingan/b/c/f;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pingan/b/c/k;->b:Lcom/pingan/b/a/f;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pingan/b/c/k;->a:Lcom/pingan/b/c/a;

    move-object/from16 v12, v19

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v8

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v9 .. v17}, Lcom/pingan/b/c/f;-><init>(Lcom/pingan/b/a/f;Lcom/pingan/b/c/a;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/b/c/j;Lcom/pingan/b/c/h;Lcom/pingan/b/c/l;)V

    .line 1148
    invoke-static {v9}, Lcom/pingan/b/d/a;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
