.class public Lcom/xiaomi/g/a/n;
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
        "Lcom/xiaomi/g/a/n;",
        "Lcom/xiaomi/g/a/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/g/a/o;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lorg/apache/a/b/m;

.field private static final k:Lorg/apache/a/b/e;

.field private static final l:Lorg/apache/a/b/e;

.field private static final m:Lorg/apache/a/b/e;

.field private static final n:Lorg/apache/a/b/e;

.field private static final o:Lorg/apache/a/b/e;

.field private static final p:Lorg/apache/a/b/e;

.field private static final q:Lorg/apache/a/b/e;

.field private static final r:Lorg/apache/a/b/e;


# instance fields
.field public a:Lcom/xiaomi/g/a/a;

.field public b:Z

.field public c:Z

.field public d:Ljava/nio/ByteBuffer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/xiaomi/g/a/f;

.field public h:Lcom/xiaomi/g/a/d;

.field private s:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v4, 0xc

    const/16 v3, 0x8

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x2

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "XmPushActionContainer"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/g/a/n;->j:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "action"

    invoke-direct {v0, v1, v3, v7}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->k:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "encryptAction"

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->l:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "isRequest"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->m:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "pushAction"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->n:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "appid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->o:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->p:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "target"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->q:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "metaInfo"

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/n;->r:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/g/a/o;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/g/a/o;->a:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "action"

    new-instance v4, Lorg/apache/a/a/a;

    const-class v5, Lcom/xiaomi/g/a/a;

    invoke-direct {v4, v5}, Lorg/apache/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->b:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "encryptAction"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->c:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "isRequest"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->d:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "pushAction"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v8}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->e:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "appid"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v8}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->f:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v8}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->g:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "target"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/g/a/f;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/o;->h:Lcom/xiaomi/g/a/o;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "metaInfo"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/g/a/d;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/g/a/n;->i:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/g/a/n;

    sget-object v1, Lcom/xiaomi/g/a/n;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->s:Ljava/util/BitSet;

    iput-boolean v2, p0, Lcom/xiaomi/g/a/n;->b:Z

    iput-boolean v2, p0, Lcom/xiaomi/g/a/n;->c:Z

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->s:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->s:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'action\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'pushAction\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/g/a/n;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/g/a/n;->c:Z

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->g()V

    return-object p0
.end method

.method public final a(Z)Lcom/xiaomi/g/a/n;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/g/a/n;->b:Z

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->e()V

    return-object p0
.end method

.method public final a(Lorg/apache/a/b/h;)V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0xb

    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_8

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/g/a/a;->a(I)Lcom/xiaomi/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    goto :goto_0

    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/g/a/n;->b:Z

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->e()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/g/a/n;->c:Z

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->g()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v6, :cond_6

    new-instance v0, Lcom/xiaomi/g/a/f;

    invoke-direct {v0}, Lcom/xiaomi/g/a/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->a(Lorg/apache/a/b/h;)V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v6, :cond_7

    new-instance v0, Lcom/xiaomi/g/a/d;

    invoke-direct {v0}, Lcom/xiaomi/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/d;->a(Lorg/apache/a/b/h;)V

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->d()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'encryptAction\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->f()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'isRequest\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_a
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->m()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/g/a/n;->k:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 3000
    iget v0, v0, Lcom/xiaomi/g/a/a;->n:I

    .line 0
    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    :cond_0
    sget-object v0, Lcom/xiaomi/g/a/n;->l:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-boolean v0, p0, Lcom/xiaomi/g/a/n;->b:Z

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Z)V

    sget-object v0, Lcom/xiaomi/g/a/n;->m:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-boolean v0, p0, Lcom/xiaomi/g/a/n;->c:Z

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/g/a/n;->n:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/nio/ByteBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/g/a/n;->o:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/g/a/n;->p:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/g/a/n;->q:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->b(Lorg/apache/a/b/h;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/g/a/n;->r:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/d;->b(Lorg/apache/a/b/h;)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/a/c;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1000
    iput-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    .line 0
    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/g/a/n;

    .line 4000
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
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/g/a/n;->b:Z

    iget-boolean v1, p1, Lcom/xiaomi/g/a/n;->b:Z

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaomi/g/a/n;->c:Z

    iget-boolean v1, p1, Lcom/xiaomi/g/a/n;->c:Z

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p1, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return v0

    .line 0
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/g/a/n;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/g/a/n;

    .line 2000
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->c()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/g/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/g/a/n;->b:Z

    iget-boolean v2, p1, Lcom/xiaomi/g/a/n;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/g/a/n;->c:Z

    iget-boolean v2, p1, Lcom/xiaomi/g/a/n;->c:Z

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->h()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->h()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->k()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->k()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    invoke-virtual {v1, v2}, Lcom/xiaomi/g/a/f;->a(Lcom/xiaomi/g/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    invoke-virtual {v1, v2}, Lcom/xiaomi/g/a/d;->a(Lcom/xiaomi/g/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    const/4 v0, 0x1

    .line 0
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionContainer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "encryptAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/g/a/n;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/g/a/n;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pushAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/n;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lorg/apache/a/c;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
