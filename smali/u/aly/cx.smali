.class public Lu/aly/cx;
.super Lu/aly/fi;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/fi",
        "<",
        "Lu/aly/cx;",
        "Lu/aly/cy;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/cy;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/gg;

.field private static final e:Lu/aly/fx;

.field private static final f:Lu/aly/fx;

.field private static synthetic g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/cx;->d:Lu/aly/gg;

    .line 34
    new-instance v0, Lu/aly/fx;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cx;->e:Lu/aly/fx;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cx;->f:Lu/aly/fx;

    .line 100
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/cy;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lu/aly/cy;->a:Lu/aly/cy;

    new-instance v2, Lu/aly/fo;

    const-string v3, "string_value"

    .line 102
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lu/aly/cy;->b:Lu/aly/cy;

    new-instance v2, Lu/aly/fo;

    const-string v3, "long_value"

    .line 104
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v6}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/cx;->a:Ljava/util/Map;

    .line 106
    const-class v0, Lu/aly/cx;

    sget-object v1, Lu/aly/cx;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lu/aly/fi;-><init>()V

    .line 111
    return-void
.end method

.method private static synthetic e()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lu/aly/cx;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lu/aly/cy;->values()[Lu/aly/cy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lu/aly/cy;->b:Lu/aly/cy;

    invoke-virtual {v1}, Lu/aly/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lu/aly/cy;->a:Lu/aly/cy;

    invoke-virtual {v1}, Lu/aly/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lu/aly/cx;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final a(Lu/aly/ga;Lu/aly/fx;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-short v1, p2, Lu/aly/fx;->c:S

    invoke-static {v1}, Lu/aly/cy;->a(I)Lu/aly/cy;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lu/aly/cx;->e()[I

    move-result-object v2

    invoke-virtual {v1}, Lu/aly/cy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    iget-byte v1, p2, Lu/aly/fx;->b:B

    sget-object v2, Lu/aly/cx;->e:Lu/aly/fx;

    iget-byte v2, v2, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-byte v1, p2, Lu/aly/fx;->b:B

    invoke-static {p1, v1}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-byte v1, p2, Lu/aly/fx;->b:B

    sget-object v2, Lu/aly/cx;->f:Lu/aly/fx;

    iget-byte v2, v2, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_2

    .line 172
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    iget-byte v1, p2, Lu/aly/fx;->b:B

    invoke-static {p1, v1}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lu/aly/ga;S)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 204
    invoke-static {p2}, Lu/aly/cy;->a(I)Lu/aly/cy;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lu/aly/cx;->e()[I

    move-result-object v1

    invoke-virtual {v0}, Lu/aly/cy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 213
    :pswitch_1
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find a field with field id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final synthetic a(S)Lu/aly/fg;
    .locals 1

    .prologue
    .line 1
    .line 2258
    invoke-static {p1}, Lu/aly/cy;->b(I)Lu/aly/cy;

    move-result-object v0

    .line 1
    return-object v0
.end method

.method protected final synthetic a(Lu/aly/fg;)Lu/aly/fx;
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lu/aly/cy;

    .line 2241
    invoke-static {}, Lu/aly/cx;->e()[I

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/cy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown field id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2243
    :pswitch_0
    sget-object v0, Lu/aly/cx;->e:Lu/aly/fx;

    .line 2245
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lu/aly/cx;->f:Lu/aly/fx;

    goto :goto_0

    .line 2241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a()Lu/aly/gg;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lu/aly/cx;->d:Lu/aly/gg;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lu/aly/cy;->b:Lu/aly/cy;

    iput-object v0, p0, Lu/aly/cx;->c:Lu/aly/fg;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_0
    sget-object v0, Lu/aly/cy;->a:Lu/aly/cy;

    iput-object v0, p0, Lu/aly/cx;->c:Lu/aly/fg;

    .line 277
    iput-object p1, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    .line 278
    return-void
.end method

.method protected final c(Lu/aly/ga;)V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lu/aly/cx;->e()[I

    move-result-object v1

    iget-object v0, p0, Lu/aly/cx;->c:Lu/aly/fg;

    check-cast v0, Lu/aly/cy;

    invoke-virtual {v0}, Lu/aly/cy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write union with unknown field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu/aly/cx;->c:Lu/aly/fg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d(Lu/aly/ga;)V
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lu/aly/cx;->e()[I

    move-result-object v1

    iget-object v0, p0, Lu/aly/cx;->c:Lu/aly/fg;

    check-cast v0, Lu/aly/cy;

    invoke-virtual {v0}, Lu/aly/cy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write union with unknown field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu/aly/cx;->c:Lu/aly/fg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :pswitch_1
    iget-object v0, p0, Lu/aly/cx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    instance-of v1, p1, Lu/aly/cx;

    if-eqz v1, :cond_0

    .line 305
    check-cast p1, Lu/aly/cx;

    .line 1312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu/aly/cx;->b()Lu/aly/fg;

    move-result-object v1

    invoke-virtual {p1}, Lu/aly/cx;->b()Lu/aly/fg;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lu/aly/cx;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lu/aly/cx;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method
