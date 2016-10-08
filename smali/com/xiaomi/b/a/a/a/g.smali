.class public Lcom/xiaomi/b/a/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/a/b",
        "<",
        "Lcom/xiaomi/b/a/a/a/g;",
        "Lcom/xiaomi/b/a/a/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/a/a/h;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lorg/apache/a/b/m;

.field private static final i:Lorg/apache/a/b/e;

.field private static final j:Lorg/apache/a/b/e;

.field private static final k:Lorg/apache/a/b/e;

.field private static final l:Lorg/apache/a/b/e;

.field private static final m:Lorg/apache/a/b/e;

.field private static final n:Lorg/apache/a/b/e;

.field private static final o:Lorg/apache/a/b/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xa

    const/16 v6, 0xb

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/16 v7, 0x8

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "LandNodeInfo"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->h:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "ip"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->i:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "failed_count"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->j:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "success_count"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->k:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "duration"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->l:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "size"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->m:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "exp_info"

    const/16 v2, 0xd

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->n:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "http_info"

    const/16 v2, 0xd

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->o:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/a/a/h;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->a:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "ip"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->b:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "failed_count"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->c:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "success_count"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->d:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "duration"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v9}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->e:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "size"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->f:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "exp_info"

    new-instance v4, Lorg/apache/a/a/e;

    new-instance v5, Lorg/apache/a/a/c;

    invoke-direct {v5, v6}, Lorg/apache/a/a/c;-><init>(B)V

    new-instance v6, Lorg/apache/a/a/c;

    invoke-direct {v6, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lorg/apache/a/a/e;-><init>(Lorg/apache/a/a/c;Lorg/apache/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/h;->g:Lcom/xiaomi/b/a/a/a/h;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "http_info"

    new-instance v4, Lorg/apache/a/a/e;

    new-instance v5, Lorg/apache/a/a/c;

    invoke-direct {v5, v7}, Lorg/apache/a/a/c;-><init>(B)V

    new-instance v6, Lorg/apache/a/a/c;

    invoke-direct {v6, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lorg/apache/a/a/e;-><init>(Lorg/apache/a/a/c;Lorg/apache/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/a/a/g;->g:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/a/a/g;

    sget-object v1, Lcom/xiaomi/b/a/a/a/g;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ip\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public final a(Lorg/apache/a/b/h;)V
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v2, :cond_8

    iget-short v2, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-ne v2, v6, :cond_2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/g;->b:I

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->a()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-ne v2, v6, :cond_3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/g;->c:I

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->b()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/a/b/h;->n()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/b/a/a/a/g;->d:J

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->c()V

    goto :goto_0

    :cond_4
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-ne v2, v6, :cond_5

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/g;->e:I

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->d()V

    goto :goto_0

    :cond_5
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-ne v2, v7, :cond_6

    invoke-virtual {p1}, Lorg/apache/a/b/h;->g()Lorg/apache/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    move v0, v1

    :goto_1
    iget v3, v2, Lorg/apache/a/b/g;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v2, v0, Lorg/apache/a/b/e;->b:B

    if-ne v2, v7, :cond_7

    invoke-virtual {p1}, Lorg/apache/a/b/h;->g()Lorg/apache/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lorg/apache/a/b/g;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required field \'failed_count\' was not found in serialized data! Struct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required field \'success_count\' was not found in serialized data! Struct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_a
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->h()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->i()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required field \'size\' was not found in serialized data! Struct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->l()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->i:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->j:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->b:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->k:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->c:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->l:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-wide v0, p0, Lcom/xiaomi/b/a/a/a/g;->d:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/a/b/h;->a(J)V

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->m:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->e:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->n:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    new-instance v0, Lorg/apache/a/b/g;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/g;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/a/a/g;->o:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    new-instance v0, Lorg/apache/a/b/g;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/g;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/a/b/h;->a(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/b/a/a/a/g;

    .line 2000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->b:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/g;->b:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->c:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/g;->c:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/xiaomi/b/a/a/a/g;->d:J

    iget-wide v2, p1, Lcom/xiaomi/b/a/a/a/g;->d:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/a/c;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xiaomi/b/a/a/a/g;->e:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/g;->e:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/g;->q:Ljava/util/BitSet;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v0

    .line 0
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/b/a/a/a/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/a/a/g;

    .line 1000
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->e()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->e()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->b:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/g;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->c:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/g;->c:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/b/a/a/a/g;->d:J

    iget-wide v4, p1, Lcom/xiaomi/b/a/a/a/g;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->e:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/g;->e:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    const/4 v0, 0x1

    .line 0
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LandNodeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "failed_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "success_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/b/a/a/a/g;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "exp_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "http_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/g;->p:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
