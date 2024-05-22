using {com.test.rdb as db} from '../db/schema';
service Developers {
    entity Developer as projection on  db.Developer
}
annotate Developers.Developer with @odata.draft.enabled;