library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:ProyectoAnime/src/model/anime/anime.dart';
import 'package:ProyectoAnime/src/model/anime/anime_item.dart';
import 'package:ProyectoAnime/src/model/anime/character_staff.dart';
import 'package:ProyectoAnime/src/model/anime/episode.dart';
import 'package:ProyectoAnime/src/model/anime/promo.dart';
import 'package:ProyectoAnime/src/model/anime/staff.dart';
import 'package:ProyectoAnime/src/model/character/character.dart';
import 'package:ProyectoAnime/src/model/character/character_role.dart';
import 'package:ProyectoAnime/src/model/character/voice_actor.dart';
import 'package:ProyectoAnime/src/model/club/club.dart';
import 'package:ProyectoAnime/src/model/club/member.dart';
import 'package:ProyectoAnime/src/model/common/aired.dart';
import 'package:ProyectoAnime/src/model/common/article.dart';
import 'package:ProyectoAnime/src/model/common/forum.dart';
import 'package:ProyectoAnime/src/model/common/generic_info.dart';
import 'package:ProyectoAnime/src/model/common/last_post.dart';
import 'package:ProyectoAnime/src/model/common/meta.dart';
import 'package:ProyectoAnime/src/model/common/more_info.dart';
import 'package:ProyectoAnime/src/model/common/picture.dart';
import 'package:ProyectoAnime/src/model/common/recommendation.dart';
import 'package:ProyectoAnime/src/model/common/related.dart';
import 'package:ProyectoAnime/src/model/common/review.dart';
import 'package:ProyectoAnime/src/model/common/review_score.dart';
import 'package:ProyectoAnime/src/model/common/reviewer.dart';
import 'package:ProyectoAnime/src/model/common/score.dart';
import 'package:ProyectoAnime/src/model/common/scores.dart';
import 'package:ProyectoAnime/src/model/common/stats.dart';
import 'package:ProyectoAnime/src/model/common/user_update.dart';
import 'package:ProyectoAnime/src/model/genre/genre_list.dart';
import 'package:ProyectoAnime/src/model/genre/mal_url.dart';
import 'package:ProyectoAnime/src/model/magazine/magazine.dart';
import 'package:ProyectoAnime/src/model/manga/manga.dart';
import 'package:ProyectoAnime/src/model/manga/manga_item.dart';
import 'package:ProyectoAnime/src/model/person/anime_staff.dart';
import 'package:ProyectoAnime/src/model/person/person.dart';
import 'package:ProyectoAnime/src/model/person/published_manga.dart';
import 'package:ProyectoAnime/src/model/person/voice_acting.dart';
import 'package:ProyectoAnime/src/model/producer/producer.dart';
import 'package:ProyectoAnime/src/model/schedule/schedule.dart';
import 'package:ProyectoAnime/src/model/search/search.dart';
import 'package:ProyectoAnime/src/model/season/season.dart';
import 'package:ProyectoAnime/src/model/season/season_archive.dart';
import 'package:ProyectoAnime/src/model/top/top.dart';
import 'package:ProyectoAnime/src/model/user/favorite.dart';
import 'package:ProyectoAnime/src/model/user/favorites.dart';
import 'package:ProyectoAnime/src/model/user/friend.dart';
import 'package:ProyectoAnime/src/model/user/history.dart';
import 'package:ProyectoAnime/src/model/user/user_item.dart';
import 'package:ProyectoAnime/src/model/user/user_profile.dart';
import 'package:ProyectoAnime/src/model/user/user_stats.dart';

part 'serializers.g.dart';

@SerializersFor([
  Aired,
  Anime,
  AnimeItem,
  AnimeStaff,
  Article,
  Character,
  CharacterRole,
  CharacterStaff,
  Club,
  Episode,
  Favorite,
  Favorites,
  Forum,
  Friend,
  GenericInfo,
  GenreList,
  History,
  LastPost,
  MalUrl,
  Magazine,
  Manga,
  MangaItem,
  Member,
  Meta,
  MoreInfo,
  Person,
  Picture,
  Producer,
  Promo,
  PublishedManga,
  Recommendation,
  Related,
  Review,
  ReviewScore,
  Reviewer,
  Schedule,
  Score,
  Scores,
  Search,
  Season,
  SeasonArchive,
  Staff,
  Stats,
  Top,
  UserItem,
  UserProfile,
  UserStats,
  UserUpdate,
  VoiceActing,
  VoiceActor,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Article)]),
          () => ListBuilder<Article>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Episode)]),
          () => ListBuilder<Episode>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Forum)]),
          () => ListBuilder<Forum>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Friend)]),
          () => ListBuilder<Friend>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(History)]),
          () => ListBuilder<History>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Member)]),
          () => ListBuilder<Member>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Picture)]),
          () => ListBuilder<Picture>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Promo)]),
          () => ListBuilder<Promo>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Recommendation)]),
          () => ListBuilder<Recommendation>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Review)]),
          () => ListBuilder<Review>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Search)]),
          () => ListBuilder<Search>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(SeasonArchive)]),
          () => ListBuilder<SeasonArchive>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(Top)]), () => ListBuilder<Top>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(UserItem)]),
          () => ListBuilder<UserItem>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(UserUpdate)]),
          () => ListBuilder<UserUpdate>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
